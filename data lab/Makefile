#
# Makefile that builds btest and other helper programs for the CS:APP data lab
#

# General variables
# XXX S22 work around catshark having a newer gcc in /usr/local/bin
# XXX revert to plain gcc after shark OS upgrade (to match unix.andrew)
# XXX at that point may want to add -Wno-shift-negative-value to CFLAGS
CC = /usr/bin/gcc
CFLAGS = -std=gnu99 -m64 -O1 -fwrapv -g -Werror -Wall -Wextra \
	 -Wstrict-prototypes -Wwrite-strings \
	 -Wno-unused-parameter -Wno-cast-function-type -Wno-bool-operation
LDLIBS = -lm

# Path to LLVM binaries when running on autograder and shark cluster
ifneq (,$(wildcard /usr/lib/llvm-7/bin/))
  LLVM_PATH = /usr/lib/llvm-7/bin/
else
  ifneq (,$(wildcard /usr/local/depot/llvm-7.0/bin/))
    LLVM_PATH = /usr/local/depot/llvm-7.0/bin/
  endif
endif

# Targets to compile
FILES = btest fshow ishow

.PHONY: all
all: $(FILES)

btest: btest.c bits.c decl.c tests.c btest.h bits.h
	$(CC) $(CFLAGS) -o btest bits.c btest.c decl.c tests.c $(LDLIBS)

fshow: fshow.c
	$(CC) $(CFLAGS) -o fshow fshow.c

ishow: ishow.c
	$(CC) $(CFLAGS) -o ishow ishow.c

# Forces a recompile. Used by the driver program.
.PHONY: btestexplicit
btestexplicit:
	$(CC) $(CFLAGS) -o btest bits.c btest.c decl.c tests.c $(LDLIBS)

.PHONY: clean
clean:
	rm -f *~ *.o
	rm -f $(FILES)

# Include rules for submit, format, etc
FORMAT_FILES = bits.c
HANDIN_FILES = bits.c
include helper.mk

# Add check-format dependencies
submit: | check-format
$(FILES): | check-format
