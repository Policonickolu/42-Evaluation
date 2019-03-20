#!/bin/sh

echo "TEST 0 SANS LIB"
gcc -o test0 test0.c
/usr/bin/time -l ./test0

echo "TEST 1 SANS LIB"
gcc -o test1 test1.c 
/usr/bin/time -l ./test1 

echo "TEST 0"
./run.sh /usr/bin/time -l ./test0
echo "TEST 1"
./run.sh /usr/bin/time -l ./test1

echo "TEST 2"
gcc -o test2 test2.c 
./run.sh /usr/bin/time -l ./test2 

echo "TEST 3"
gcc -o test3 test3.c 
./run.sh ./test3

echo "TEST 3 bis"
gcc -o test3b test3b.c 
./run.sh ./test3b

echo "TEST 4"
gcc -o test4 test4.c 
./run.sh ./test4 

echo "TEST 5"
gcc -o test5 test5.c -L. -lft_malloc 
./test5
