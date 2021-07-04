#!/bin/bash -x
echo "SortingArithmetic"
echo "give three inputs:"
read a b c
echo "a:$a b:$b c:$c"
echo "a+b*c :$(($a+$b*$c))"
echo "a*b+c :$(($a*$b+$c))"
