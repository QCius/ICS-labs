# Bomb lab
It is solutions of bomb lab of csapp.
phase_1: Easily we can read the data through register.

phase_2: The data is stored in the stack. At this phase, the value of
the register is changed to gradually obtain the data at the
next location(rsp+4i). The answer is actually the Fibonacci sequence.

phase_3: Switch. 0 < first_number < 5, many solutions like (4 0), (5 4294966996).

phase_4: Recurrence. Actually we can solved this phase just by gdb without knowing 
exact loop details.

phase_5: Characters a~f are mapped to a 6 1 c 10 9. When the sum of six images is a certain
number(0x3f), bomb defused.

phase_6: Complex loop structure. phase_6 and secret phase are not defused.
