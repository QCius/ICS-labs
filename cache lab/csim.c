#include <getopt.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cachelab.h"
typedef struct cache_line
{
    int valid_bit;
    int tag;
    int LRUcounter;
} cache_line;
cache_line **cache;

int hit_count = 0,
    miss_count = 0,
    eviction_count = 0;
int h, v, S, s, E, b;
char t[50] = "default_file_name.txt"; // initialize t to a default filename;

void cacheInit()
{
    cache = (cache_line **)malloc(sizeof(cache_line *) * S);
    for (int i = 0; i < S; i++){
        cache[i] = (cache_line *)malloc(sizeof(cache_line) * E);
        for (int j = 0; j < E; j++){
            cache[i][j].valid_bit = 0;
            cache[i][j].tag = 0;
            cache[i][j].LRUcounter = 0;
        }  //for
    }  //for
}

void cacheDestroy() {
    for (int i = 0; i < S; i++) {
        if(cache[i]) free(cache[i]);
        cache[i]=NULL;
    }
    if(cache) free(cache);
    cache=NULL;
}

void doStuff(unsigned address, int identifier)
{ 
    int missflag = 1;
    int emptyflag = 0;
    unsigned this_tag = address >> (s + b);
    unsigned this_s = (address >> b) & (~ ((~ 0) << s));

    if (identifier == 'M') hit_count++;
    for (int i = 0; i < E; i++){
        if (cache[this_s][i].valid_bit == 1 && cache[this_s][i].tag == this_tag){
                hit_count++;
                cache[this_s][i].LRUcounter = 0;
                missflag = 0; 
        }
    }  //for, hit check

    if(missflag){
        miss_count++;
        for (int i = 0; i < E; i++) {
            if (cache[this_s][i].valid_bit == 0){
                emptyflag = 1;
                cache[this_s][i].valid_bit = 1;
                cache[this_s][i].tag = this_tag;
                cache[this_s][i].LRUcounter = 0;
                break;
            } 
        }  // for, check empty cache

        if(!emptyflag){
            eviction_count++;
            int maxLRU_counter = 0;
            int index_record = -1;
            for (int i = 0; i < E; i++){
                if (cache[this_s][i].LRUcounter > maxLRU_counter){
                    maxLRU_counter = cache[this_s][i].LRUcounter;
                    index_record = i;
                }
            }
            cache[this_s][index_record].tag = this_tag;
            cache[this_s][index_record].LRUcounter = 0;
        }  //eviction stuff
    }  //miss stuff

    for (int i = 0; i < E; i++){
        if(cache[this_s][i].valid_bit == 1)
            cache[this_s][i].LRUcounter++;
    }  //LRU counter update
}

int main(int argc, char **argv)
{
    // set data & cache init
    int opt;
    /* looping over arguments */
    while (-1 != (opt = getopt(argc, argv, "hvs:E:b:t:")))
    {
        /* determine which argument it’s processing */
        switch (opt)
        {
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                strncpy(t, optarg, sizeof(t)); // copy the filename passed as an argument
                break;
            default:
                printf("wrong argument\n");
                 break;
        }
    }
    S = 1 << s;
    cacheInit();

    //file init & read
    FILE *f;  // pointer  to  FILE  object
    f = fopen(t, "r");  // open file for reading
    if(!f)
        printf("f open fails");
    char identifier;
    unsigned address;
    int size;
    // Reading lines like " L 10,1" or " M 20,1"
    while (fscanf(f, " %c  %x,%d", &identifier, &address, &size) > 0)
    {
        switch (identifier)
        {
        case 'I':
            continue;
        case 'S':// store data
            doStuff(address, 'S');
            break;
        case 'M':// change data
            doStuff(address, 'M');
            break;
        case 'L':// read data
            doStuff(address, 'L');
            break;
        default:
            break;
        }
    }
    
    //print & outstanding work
    printSummary(hit_count, miss_count, eviction_count);
    fclose(f);
    cacheDestroy();
    return 0;
}