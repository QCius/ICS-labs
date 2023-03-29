/*
 * CS:APP Data Lab
 *
 * <Cius Fu>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 */

extern int printf(const char *, ...);

/* Edit the functions below.  Good luck!  */
// 2
/*
 * implication - given input x and y, which are binary
 * (taking  the values 0 or 1), return x -> y in propositional logic -
 * 0 for false, 1 for true
 *
 * Below is a truth table for x -> y where A is the result
 *
 * |-----------|-----|
 * |  x  |  y  |  A  |
 * |-----------|-----|
 * |  1  |  1  |  1  |
 * |-----------|-----|
 * |  1  |  0  |  0  |
 * |-----------|-----|
 * |  0  |  1  |  1  |
 * |-----------|-----|
 * |  0  |  0  |  1  |
 * |-----------|-----|
 *
 *
 *   Example: implication(1L,1L) = 1L
 *            implication(1L,0L) = 0L
 *   Rating: 2
 */
long implication(long x, long y) {
    return ((~x) + 2) | y;
    // ops:3
}
/*
 * leastBitPos - return a mask that marks the position of the
 *               least significant 1 bit. If x == 0, return 0
 *   Example: leastBitPos(96L) = 0x20L
 *   Rating:2
 */
long leastBitPos(long x) {
    return (~x + 1) & x;
    // ops:3
}
/*
 * distinctNegation - returns 1 if x != -x.
 *     and 0 otherwise
 *   Rating: 2
 */
long distinctNegation(long x) {
    return !!(x ^ (~x + 1));
    // ops:5
}
/*
 * fitsBits - return 1 if x can be represented as an
 *  n-bit, two's complement integer.
 *   1 <= n <= 64
 *   Examples: fitsBits(5,3) = 0L, fitsBits(-4,3) = 1L
 *   Rating: 2
 */
long fitsBits(long x, long n) {
    long sign = !(~(x >> 63)); // 1 is negative
    long save_n = n - 1;       // save ops
    long save_x = x >> save_n; // save ops
    long fit_positive = !sign & (!((save_x << save_n) ^ 0));
    long fit_negative = sign & (!(save_x ^ (~0)));
    return fit_negative | fit_positive;
    // ops:15
}
/*
 * trueFiveEighths - multiplies by 5/8 rounding toward 0,
 *  avoiding errors due to overflow
 *  Examples:
 *    trueFiveEighths(11L) = 6L4
 *    trueFiveEighths(-9L) = -5L
 *    trueFiveEighths(0x3000000000000000L) = 0x1E00000000000000L (no overflow)
 *  Rating: 4
 */
long trueFiveEighths(long x) {
    long three_digit = x & 0x7L; // save last 3 digits , 0x7L = 0000...00111
    long x_shift3 = x >> 3;
    long basic =
        x_shift3 + (x_shift3 << 2); // result is divided into basic and reminder
    long sign = x >> 63;
    long reminder = ((three_digit + (three_digit << 2)) + (sign & 0x7L)) >> 3;
    return basic + reminder;
    // ops:11
}
/*
 * addOK - Determine if can compute x+y without overflow
 *   Example: addOK(0x8000000000000000L,0x8000000000000000L) = 0L,
 *            addOK(0x8000000000000000L,0x7000000000000000L) = 1L,
 *   Rating: 3
 */
long addOK(long x, long y) {
    return !((!((x >> 63) ^ (y) >> 63)) & ((x >> 63) ^ ((x + y) >> 63)));
    // ops:10
}
/*
 * isPower2 - returns 1 if x is a power of 2, and 0 otherwise
 *   Examples: isPower2(5L) = 0L, isPower2(8L) = 1L, isPower2(0) = 0L
 *   Note that no negative number is a power of 2.
 *   Rating: 3
 */
long isPower2(long x) {
    return !(x >> 63) & (!!x) &
           (!(((~x + 1) & x) ^ x)); // use func leastBitPos(long x)
    // ops:11
}
/*
 * rotateLeft - Rotate x to the left by n
 *   Can assume that 0 <= n <= 63
 *   Examples:
 *      rotateLeft(0x8765432187654321L,4L) = 0x7654321876543218L
 *   Rating: 3
 */
long rotateLeft(long x, long n) {
    long left_part = x << n;
    long mask = ~((~0L) << n); // 0 must be 0L so that 32 bits will not overflow
    // the mask could work whether x is positive or not.
    long right_part = (x >> (64 - n)) & mask;
    return left_part + right_part;
    // ops:8
}
// 4
/*
 * isPalindrome - Return 1 if bit pattern in x is equal to its mirror image
 *   Example: isPalindrome(0x6F0F0123c480F0F6L) = 1L
 *   Rating: 4
 */
long isPalindrome(long x) {
    long mask1 = 0xFFFFFFFF;
    long mask2 = mask1 ^ (mask1 << 16);
    // mask2 = 0x0000FFFF0000FFFF
    long mask3 = mask2 ^ (mask2 << 8);
    // mask3 = 0x00FF00FF00FF00FF
    long mask4 = mask3 ^ (mask3 << 4);
    // mask4 = 0x0F0F0F0F0F0F0F0F
    long mask5 = mask4 ^ (mask4 << 2); // 00110011...
    long mask6 = mask5 ^ (mask5 << 1); // 01010101...

    long x_change1 = ((x >> 32) & mask1) | (x << 32);
    long x_change2 =
        ((x_change1 >> 16) & mask2) | ((x_change1 << 16) & (~mask2));
    long x_change3 =
        ((x_change2 >> 8) & (mask3)) | ((x_change2 << 8) & (~mask3));
    long x_change4 =
        ((x_change3 >> 4) & (mask4)) | ((x_change3 << 4) & (~mask4));
    long x_change5 =
        ((x_change4 >> 2) & (mask5)) | ((x_change4 << 2) & (~mask5));
    long x_change6 =
        ((x_change5 >> 1) & (mask6)) | ((x_change5 << 1) & (~mask6));
    // each step exchange several bits, finally x_change == x(reverse) as x is
    // palindrome
    return !(x_change6 ^ x);
    // ops:46
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5L) = 0L, bitParity(7L) = 1L
 *   Rating: 4
 */
long bitParity(long x) {
    // divide the number into two parts, the odd and even numbers of the first
    // half remain unchanged after the exclusive or operator( XOR operator ).
    x = (x << 32) ^ x;
    x = (x << 16) ^ x;
    x = (x << 8) ^ x;
    x = (x << 4) ^ x;
    x = (x << 2) ^ x;
    x = (x << 1) ^ x;
    return !!(x >> 63);
    // ops:15
}
/*
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Rating: 4
 */
long absVal(long x) {
    long sign = x >> 63; // -1 is negative, 0 is positive.
    long absval = (x ^ sign) - sign;
    return absval;
    // ops:3
}
