#include <stdlib.h>
#include <stdio.h>
#include <elf.h>
#include <stdint.h>

#include "Link.h"
#include "LoaderInternal.h"

void InitLibrary(LinkMap *l)
{
    /* Your code here */
    void (*init_addr)() = NULL;
    void (**initarray_addr)() = NULL;
    int initarrsz = 0;

    init_addr =(void (*)())l->dynInfo[DT_INIT]->d_un.d_ptr;
    initarray_addr = (void (**)())l->dynInfo[DT_INIT_ARRAY]->d_un.d_ptr;
    initarrsz = l->dynInfo[DT_INIT_ARRAYSZ]->d_un.d_val / sizeof(void *);

    //init
    init_addr();
    for (int i = 0; i < initarrsz; i++)
    {
        initarray_addr[i]();
    }
}
