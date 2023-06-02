/* Testing Code */

#include <limits.h>
#include <math.h>

/* Routines used by floation point test code */

/* Convert from bit level representation to floating point number */
float u2f(unsigned u) {
    union {
        unsigned u;
        float f;
    } a;
    a.u = u;
    return a.f;
}

/* Convert from floating point number to bit-level representation */
unsigned f2u(float f) {
    union {
        unsigned u;
        float f;
    } a;
    a.f = f;
    return a.u;
}
//2
long test_implication(long x, long y)
{
  return !(x && (!y));
}
long test_leastBitPos(long x) {
  long mask = 1L;
  if (x == 0)
    return 0;
  while (!(mask & x)) {
    mask = mask << 1;
  }
  return mask;
}
long test_distinctNegation(long x) {
    return (long) (x != -x);
}
long test_fitsBits(long x, long n)
{
  long TMin_n = -(1L << (n-1));
  /* This convoluted way of generating TMax avoids overflow */
  long TMax_n = (long) ((1UL << (n-1)) - 1UL);
  return (long) (x >= TMin_n && x <= TMax_n);
}
//3
long test_trueFiveEighths(long x)
{
  return (long) (((__int128) x * 5)/8);
}
long test_addOK(long x, long y)
{
    /* Use 128-bit arithmetic to check */
    __int128 lsum = (__int128) x + y;
    return (long) (lsum == (long) lsum);
}
long test_isPower2(long x) {
  long i;
  for (i = 0; i < 63; i++) {
    if (x == 1L<<i)
      return 1;
  }
  return 0;
}
long test_rotateLeft(long x, long n) {
  unsigned long u = (unsigned long) x;
  long i;
  for (i = 0; i < n; i++) {
      unsigned long msb = u >> 63;
      unsigned long rest = u << 1;
      u = rest | msb;
  }
  return (long) u;
}
//4
long test_isPalindrome(long x) {
    long result = 1L;
    int i;
    long mask = 0xFFFFFFFFL;
    long xlo = x & mask;
    long xhi = (x >> 32) & mask;
    for (i = 0; i < 32; i++) {
        int flipi = 31-i;
        long bhigh = (xhi >> i) & 0x1L;
        long blow = (xlo >> flipi) & 0x1L;
        result = result && (long) (bhigh == blow);
    }
    return result;
}
long test_bitParity(long x) {
  long result = 0;
  int i;
  for (i = 0; i < 64; i++)
    result ^= (x >> i) & 0x1L;
  return result;
}
long test_absVal(long x) {
  return (x < 0L) ? -x : x;
}
