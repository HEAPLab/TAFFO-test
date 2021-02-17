#!/bin/bash
set -e

taffo -debug-taffo porting.c -lm -O0 -o taffo.out
gcc -O0 porting.c -lm

echo "Running original program..."
./a.out exported.csv > results/notaffo.txt
echo "Running TAFFO optimized program...."
./taffo.out exported.csv > results/taffo.txt

echo "Finished."
