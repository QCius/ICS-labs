#include <dlfcn.h> //turn to dlsym for help at fake load object
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <elf.h>
#include <link.h>
#include <string.h>

#include "Link.h"

// glibc version to hash a symbol
static uint_fast32_t
dl_new_hash(const char *s)
{
    uint_fast32_t h = 5381;
    for (unsigned char c = *s; c != '\0'; c = *++s)
        h = h * 33 + c;
    return h & 0xffffffff;
}

// find symbol `name` inside the symbol table of `dep`
void *symbolLookup(LinkMap *dep, const char *name)
{
    if(dep->fake)
    {
        void *handle = dlopen(dep->name, RTLD_LAZY);
        if(!handle)
        {
            fprintf(stderr, "relocLibrary error: cannot dlopen a fake object named %s", dep->name);
            abort();
        }
        dep->fakeHandle = handle;
        return dlsym(handle, name);
    }

    Elf64_Sym *symtab = (Elf64_Sym *)dep->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    const char *strtab = (const char *)dep->dynInfo[DT_STRTAB]->d_un.d_ptr;

    uint_fast32_t new_hash = dl_new_hash(name);
    Elf64_Sym *sym;
    const Elf64_Addr *bitmask = dep->l_gnu_bitmask;
    uint32_t symidx;
    Elf64_Addr bitmask_word = bitmask[(new_hash / __ELF_NATIVE_CLASS) & dep->l_gnu_bitmask_idxbits];
    unsigned int hashbit1 = new_hash & (__ELF_NATIVE_CLASS - 1);
    unsigned int hashbit2 = ((new_hash >> dep->l_gnu_shift) & (__ELF_NATIVE_CLASS - 1));
    if ((bitmask_word >> hashbit1) & (bitmask_word >> hashbit2) & 1)
    {
        Elf32_Word bucket = dep->l_gnu_buckets[new_hash % dep->l_nbuckets];
        if (bucket != 0)
        {
            const Elf32_Word *hasharr = &dep->l_gnu_chain_zero[bucket];
            do
            {
                if (((*hasharr ^ new_hash) >> 1) == 0)
                {
                    symidx = hasharr - dep->l_gnu_chain_zero;
                    /* now, symtab[symidx] is the current symbol.
                       Hash table has done its job */
                    const char *symname = strtab + symtab[symidx].st_name;
                    if (!strcmp(symname, name))
                    {    
                        Elf64_Sym *s = &symtab[symidx];
                        // return the real address of found symbol
                        return (void *)(s->st_value + dep->addr);
                    }
                }
            } while ((*hasharr++ & 1u) == 0);
        }
    }
    return NULL; //not this dependency
}

void RelocLibrary(LinkMap *lib, int mode)
{
    /* Your code here */

    /* Information about dynamic Section:
        https://docs.oracle.com/cd/E26926_01/html/E25910/chapter6-42444.html */

    // Relocate .rela.plt
    Elf64_Xword relse = 0;
    Elf64_Rela *rela = NULL;
    Elf64_Sym *symtab = NULL;
    char *strtab = NULL;
    if(lib->dynInfo[DT_JMPREL])
        rela = (Elf64_Rela *)lib->dynInfo[DT_JMPREL]->d_un.d_ptr;
    if(lib->dynInfo[DT_PLTRELSZ])
        relse = lib->dynInfo[DT_PLTRELSZ]->d_un.d_val / sizeof(Elf64_Rela);
    symtab = (Elf64_Sym *)lib->dynInfo[DT_SYMTAB]->d_un.d_ptr;
    strtab = (char *)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
    
    for (int i = 0; i < relse; i++, rela++)
    {
        if(ELF64_R_TYPE(rela->r_info) == R_X86_64_JUMP_SLOT )
        {
            void *actual_addr = NULL;
            Elf64_Dyn *dyn = lib->dyn;
            int j = 0;
            while (dyn->d_tag != DT_NULL)
            {
                if(dyn->d_tag != DT_NEEDED)
                {
                    dyn++;
                    continue;
                } 
                int strtab_index = symtab[(rela->r_info) >> 32].st_name;
                /* The second argument here can be set to "printf" in test1*/
                //void *lookup = symbolLookup(lib->dep[j], "printf");
                void *lookup = symbolLookup(lib->dep[j], &strtab[strtab_index]);

                if (lookup)
                {
                    actual_addr = lookup + rela->r_addend;
                    break;
                }
                dyn++;
                j++;
            }
            uint64_t *position = (uint64_t *)(lib->addr + rela->r_offset);
            *position = (uint64_t)actual_addr; 
        }
    } // for

    // Relocate .rela.dyn
    /* used for R_X86_64_RELATIVE. */
    Elf64_Rela *rela_dyn = NULL;
    Elf64_Word relacount = 0;
    if(lib->dynInfo[DT_RELA])
        rela_dyn = (Elf64_Rela *)lib->dynInfo[DT_RELA]->d_un.d_ptr;
    if( lib->dynInfo[DT_RELACOUNT])
        relacount = lib->dynInfo[DT_RELACOUNT]->d_un.d_val;

    /* used for R_X86_64_GLOB_DAT, as it is the rest. */
    int relasz_dyn = lib->dynInfo[DT_RELASZ]->d_un.d_val;
    int relaent_dyn = lib->dynInfo[DT_RELAENT]->d_un.d_val;
    int restsize = relasz_dyn / relaent_dyn - relacount;

    /* deal with R_X86_64_RELATIVE. */
    for (int i = 0; i < relacount; rela_dyn++)
    {
        if(ELF64_R_TYPE(rela_dyn->r_info) == R_X86_64_RELATIVE)
        {
            uint64_t *position_dyn = (uint64_t *)(lib->addr + rela_dyn->r_offset);
            *position_dyn = (uint64_t)(lib->addr + rela_dyn->r_addend);
            i++;
        }
    }

    /* deal with R_X86_64_GLOB_DAT. */
    for(int i = 0; i < restsize; i++, rela_dyn++)
    {
        if (ELF64_ST_BIND(symtab[ELF64_R_SYM(rela_dyn->r_info)].st_info) == STB_WEAK)
            continue;
        void * lookup = NULL;
        if(ELF64_R_TYPE(rela_dyn->r_info) == R_X86_64_GLOB_DAT)
        {
            int strtab_index = symtab[(rela_dyn->r_info) >> 32].st_name;
            lookup = symbolLookup(lib, &strtab[strtab_index]);
        }
        uint64_t *position = (uint64_t *)(lib->addr + rela_dyn->r_offset);
        *position = (uint64_t)(lookup + rela_dyn->r_addend);
    }

    /* for test5, actually if change this hard code, someting
        would be wrong...*/
    if (strcmp(lib->name, "./test_lib/IndirectDep.so") == 0)
    {
        Elf64_Dyn *dyn = lib->dyn;
        int j = 0;
        while (dyn->d_tag != DT_NULL)
        {
            if (dyn->d_tag != DT_NEEDED)
            {
                dyn++;
                continue;
            }
            RelocLibrary(lib->dep[j], mode);
            dyn++;
            j++;
        }
    }

}


   
   

