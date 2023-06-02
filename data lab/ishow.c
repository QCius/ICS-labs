/* Display value of fixed point numbers */
#include <stdio.h>
#include <stdlib.h>

/*
 * get_num_val - Extract hex/decimal/or float value from string
 */
static int get_num_val(char *sval, unsigned long *valp) {
    char *endp;

    /* See if it's an integer or floating point */
    int ishex = 0;
    int isfloat = 0;
    int isnegative = 0;
    int i;
    for (i = 0; sval[i]; i++) {
        switch (sval[i]) {
        case 'x':
        case 'X':
            ishex = 1;
            break;
        case 'e':
        case 'E':
            if (!ishex)
                isfloat = 1;
            break;
        case '.':
            isfloat = 1;
            break;
        case '-':
            isnegative = 1;
        default:
            break;
        }
    }
    if (isfloat) {
        float fval = strtof(sval, &endp);
        if (!*endp) {
            *valp = *(unsigned *)&fval;
            return 1;
        }
        return 0;
    } else {
        if (isnegative)
            *valp = (unsigned long)strtol(sval, &endp, 0);
        else
            *valp = strtoul(sval, &endp, 0);
        return 1;
    }
    return 0;
}

void show_long(unsigned long uf) {
    printf("Hex = 0x%.16lxL,\tSigned = %ldL,\tUnsigned = %luL\n", uf, (long)uf,
           uf);
}

void usage(char *fname) {
    printf("Usage: %s val1 val2 ...\n", fname);
    printf("Values may be given in hex or decimal\n");
    exit(0);
}

int main(int argc, char *argv[]) {
    int i;
    unsigned long uf;
    if (argc < 2)
        usage(argv[0]);
    for (i = 1; i < argc; i++) {
        char *sval = argv[i];
        if (get_num_val(sval, &uf)) {
            show_long(uf);
        } else {
            printf("Cannot convert '%s' to 32-bit number\n", sval);
        }
    }
    return 0;
}
