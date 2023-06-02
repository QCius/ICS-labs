#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <elf.h>
#include <unistd.h> //for getpagesize
#include <sys/mman.h>
#include <fcntl.h>

#include "Link.h"
#include "LoaderInternal.h"

#define ALIGN_DOWN(base, size) ((base) & -((__typeof__(base))(size)))
#define ALIGN_UP(base, size) ALIGN_DOWN((base) + (size)-1, (size))

static const char *sys_path[] = {
    "/usr/lib/x86_64-linux-gnu/",
    "/lib/x86_64-linux-gnu/",
    ""
};

static const char *fake_so[] = {
    "libc.so.6",
    "ld-linux.so.2",
    ""
};

static void setup_hash(LinkMap *l)
{
    uint32_t *hash;

    /* borrowed from dl-lookup.c:_dl_setup_hash */
    Elf32_Word *hash32 = (Elf32_Word *)l->dynInfo[DT_GNU_HASH]->d_un.d_ptr;
    l->l_nbuckets = *hash32++;
    Elf32_Word symbias = *hash32++;
    Elf32_Word bitmask_nwords = *hash32++;

    l->l_gnu_bitmask_idxbits = bitmask_nwords - 1;
    l->l_gnu_shift = *hash32++;

    l->l_gnu_bitmask = (Elf64_Addr *)hash32;
    hash32 += 64 / 32 * bitmask_nwords;

    l->l_gnu_buckets = hash32;
    hash32 += l->l_nbuckets;
    l->l_gnu_chain_zero = hash32 - symbias;
}

static void fill_info(LinkMap *lib)
{
    Elf64_Dyn *dyn = lib->dyn;
    Elf64_Dyn **dyn_info = lib->dynInfo;

    while (dyn->d_tag != DT_NULL)
    {
        if ((Elf64_Xword)dyn->d_tag < DT_NUM)
            dyn_info[dyn->d_tag] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_RELACOUNT_)
            dyn_info[DT_RELACOUNT] = dyn;
        else if ((Elf64_Xword)dyn->d_tag == DT_GNU_HASH_)
            dyn_info[DT_GNU_HASH] = dyn;
        ++dyn;
    }
    #define rebase(tag)                             \
        do                                          \
        {                                           \
            if (dyn_info[tag])                          \
                dyn_info[tag]->d_un.d_ptr += lib->addr; \
        } while (0)
    rebase(DT_SYMTAB);
    rebase(DT_STRTAB);
    rebase(DT_RELA);
    rebase(DT_JMPREL);
    rebase(DT_GNU_HASH); //DT_GNU_HASH
    rebase(DT_PLTGOT);
    rebase(DT_INIT);
    rebase(DT_INIT_ARRAY);
}

void *MapLibrary(const char *libpath)
{
    /*
     * hint:
     * 
     * lib = malloc(sizeof(LinkMap));
     * 
     * foreach segment:
     * mmap(start_addr, segment_length, segment_prot, MAP_FILE | ..., library_fd, 
     *      segment_offset);
     * 
     * lib -> addr = ...;
     * lib -> dyn = ...;
     * 
     * fill_info(lib);
     * setup_hash(lib);
     * 
     * return lib;
    */
   
    /* Your code here */
    
    LinkMap *lib = calloc(1, sizeof(LinkMap));
    memset(lib, 0, sizeof(LinkMap));
    lib->name=libpath;
    lib->dyn = NULL;

    // set for test 1
    if(!strcmp(libpath,"libc.so.6")){
        lib->fake = 1;
        return lib;
    }
    
    // Open file
    char path[50]; // it is for test3
    if(libpath[0]=='.')
        strcpy(path, libpath);
    else
    {
        strcpy(path, "./test_lib/");
        strcat(path, libpath);
    }
    int fd = open(path, O_RDONLY);
    if (fd == -1)
    {
        fprintf(stderr, "Failed to open library: %s\n", libpath);
        free(lib);
        return NULL;
    }

    // Read ELF header
    Elf64_Ehdr header;
    if (read(fd, &header, sizeof(Elf64_Ehdr)) != sizeof(Elf64_Ehdr)) {
        fprintf(stderr, "Failed to read ELF header\n");
        close(fd);
        free(lib);
        return NULL;
    }
 
    const int pagesize = getpagesize();
    uint64_t enough_allocate_size = header.e_phnum * pagesize;
    Elf64_Addr first_offset = 0;
    void *addr = NULL;

    // Deal with segtions
    for (int i = 0; i < header.e_phnum; i++)
    {
        Elf64_Phdr *seg = malloc(sizeof(Elf64_Phdr));
        pread(fd, seg, sizeof(Elf64_Phdr), header.e_phoff + i * sizeof(Elf64_Phdr));

        // Change flags
        int prot = 0;
        prot |= (seg->p_flags & PF_R) ? PROT_READ : 0;
        prot |= (seg->p_flags & PF_W) ? PROT_WRITE : 0;
        prot |= (seg->p_flags & PF_X) ? PROT_EXEC : 0;

        // Page alignment deviation
        int dev = seg->p_offset - ALIGN_DOWN(seg->p_offset, pagesize);

        // Reserve enough memory
        if(i == 0) 
        {
            addr = mmap(NULL, enough_allocate_size, prot,
                        MAP_PRIVATE, fd, ALIGN_DOWN(seg->p_offset, pagesize));
            lib->addr = (uint64_t)addr + dev;
            continue;
        }

        // Save dynamic segmentation address
        if (seg->p_type == PT_DYNAMIC)
        {
            lib->dyn = addr + seg->p_vaddr -first_offset;
        }

        // Mmap load
        if (seg->p_type == PT_LOAD)
        {
            mmap(seg->p_vaddr - first_offset + addr - dev,
                 ALIGN_UP(seg->p_memsz + dev,
                          getpagesize()),
                 prot,
                 MAP_PRIVATE | MAP_FIXED,
                 fd,
                 ALIGN_DOWN(seg->p_offset, pagesize));
        }
        
        free(seg);
    }// for

    // Next fill and clean
    fill_info(lib);
    setup_hash(lib);
    close(fd);

    /* Set dep array while dynamic sections exist, and recursion will
       load all dependent libraries. */
    Elf64_Dyn *dyn = lib->dyn;
    if(dyn->d_tag != DT_NULL)
    {
        lib->dep = malloc(sizeof(LinkMap) * 50);
        char *file_start = (char *)lib->dynInfo[DT_STRTAB]->d_un.d_ptr;
        int i = 0;
        while (dyn->d_tag != DT_NULL)
        {
            if (dyn->d_tag == DT_NEEDED)
            {
                lib->dep[i] = MapLibrary(file_start + dyn->d_un.d_ptr);
                i++;
            }
            dyn++;
        }
    }
    return lib;
}



