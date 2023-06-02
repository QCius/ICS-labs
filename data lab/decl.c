#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#define TMin LONG_MIN
#define TMax LONG_MAX

#include "bits.h"
#include "btest.h"

test_rec test_set[] = {
//2
 {"implication", (funct_t) implication, (funct_t) test_implication, 2, "! ~ ^ |", 5, 2,
     {{0,1},{0,1},{TMin,TMax}}},
 {"leastBitPos", (funct_t) leastBitPos, (funct_t) test_leastBitPos, 1, "! ~ & ^ | + << >>", 6, 2,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"distinctNegation", (funct_t) distinctNegation, (funct_t) test_distinctNegation, 1, "! ~ & ^ | +", 5, 2,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"fitsBits", (funct_t) fitsBits, (funct_t) test_fitsBits, 2,
    "! ~ & ^ | + << >>", 15, 2,
  {{TMin, TMax},{1,64},{TMin,TMax}}},
//3
 {"trueFiveEighths", (funct_t) trueFiveEighths, (funct_t) test_trueFiveEighths, 1,
    "! ~ & ^ | + << >>", 20, 4,
  {{TMin,TMax},{TMin,TMax},{TMin,TMax}}},
 {"addOK", (funct_t) addOK, (funct_t) test_addOK, 2,
    "! ~ & ^ | + << >>", 20, 3,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"isPower2", (funct_t) isPower2, (funct_t) test_isPower2, 1, "! ~ & ^ | + << >>", 20, 3,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"rotateLeft", (funct_t) rotateLeft, (funct_t) test_rotateLeft,
   2, "! ~ & ^ | + << >>", 25, 3,
  {{TMin, TMax},{0,63},{TMin,TMax}}},
//4
{"isPalindrome", (funct_t) isPalindrome, (funct_t) test_isPalindrome, 1, "! ~ & ^ | + << >>", 70, 4,
        {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"bitParity", (funct_t) bitParity, (funct_t) test_bitParity, 1, "! ~ & ^ | + << >>", 22, 4,
  {{TMin, TMax},{TMin,TMax},{TMin,TMax}}},
 {"absVal", (funct_t) absVal, (funct_t) test_absVal, 1, "! ~ & ^ | + << >>", 10, 4,
  {{-TMax, TMax},{TMin,TMax},{TMin,TMax}}},
{
    "", NULL, NULL, 0, "", 0, 0, {
        {0, 0}, {0, 0}, {
            0, 0
        }
    }
}
}
;
