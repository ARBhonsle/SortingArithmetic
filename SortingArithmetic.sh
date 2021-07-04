#!/bin/bash -x
echo "SortingArithmetic"
echo "give three inputs:"
read a b c
echo "a:$a b:$b c:$c"
echo "a+b*c :$(($a+$b*$c))"
echo "a*b+c :$(($a*$b+$c))"
echo "c+a/b :$(($c+$a/$b))"
echo "a%b+c :$(($a%$b+$c))"
declare -A result
result[one]=$(($a+$b*$c))
result[two]=$(($a*$b+$c))
result[three]=$(($c+$a/$b))
result[four]=$(($a%$b+$c))
for key in ${!result[@]}
do
	echo $key $((result[$key]))
done
