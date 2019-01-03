#!/bin/bash

# To more easily compile and run this program on CSS Linux Lab
# Lines starting with '$' indicate what is typed on command line

# make this file executable
# $ chmod 700 simplecompile.sh
# redirect the output and stderr from this file to output.txt
# $ ./simplecompile.sh > output.txt 2>&1

date

echo "*** Compiling C program"
gcc -std=c11 -Wall -Wextra -Wno-sign-compare *.c -g -o myprogram.exe

echo "*** cpplint"
cpplint *.cpp *.h

echo "*** cppcheck C program"
cppcheck --enable=all --inconclusive --language=c --std=posix --suppress=missingIncludeSystem *.c

echo "*** running"
./myprogram.exe

echo "*** running with valgrind"
valgrind ./myprogram.exe

echo "*** cleaning up"
rm myprogram.exe

date

