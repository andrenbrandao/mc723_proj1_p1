#!/bin/bash

for f in *.plg;
do
    perf stat -r 10 -e cycles,bus-cycles,cpu-clock,page-faults,L1-dcache-store-misses,L1-dcache-load-misses,mem-stores /usr/bin/gnuplot "$f" 
done
