#!/bin/bash

rm ../Data/benchmarks_convolution_std.txt

MAX_SIZE=100

cd ../bin
echo "Running convolution_std_benchmark_linear.bin"
for i in $(seq 3 $MAX_SIZE)
do
    for j in $(seq 3 $(($i-1)))
    do
	./convolution_std_benchmark_linear.bin $i $j > /dev/null
    done
done

echo "Running convolution_std_benchmark_circular.bin"
for i in $(seq 3 $MAX_SIZE)
do
    for j in $(seq 3 $(($i-1)))
    do
	./convolution_std_benchmark_circular.bin $i $j > /dev/null
    done
done
cd ../BashScripts


