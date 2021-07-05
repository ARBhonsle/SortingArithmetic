#!/bin/bash
echo "SortingArithmetic"
echo "give three inputs:"
read a b c
echo "a:$a b:$b c:$c"
echo "a+b*c :$(($a+$b*$c))"
echo "a*b+c :$(($a*$b+$c))"
echo "c+a/b :$(($c+$a/$b))"
echo "a%b+c :$(($a%$b+$c))"
#dictionary result
declare -A result
result[one]=$(($a+$b*$c))
result[two]=$(($a*$b+$c))
result[three]=$(($c+$a/$b))
result[four]=$(($a%$b+$c))
for key in ${!result[@]}
do
	echo $key $((result[$key]))
done
#array computeResult declared
declare -a computeResult
count=0
for key in ${result[@]}
do
	computeResult[((count++))]=$key
done
#desc order
for((count=0;count<${#computeResult[@]};count++))
do
	for((c=0;c<$((${#computeResult[@]}-1));c++))
	do
		if [ $((computeResult[$c])) -lt $((computeResult[$(($c+1))])) ]
		then
			temp=$((computeResult[$c]))
			computeResult[$c]=$((computeResult[$(($c+1))]))
			computeResult[$(($c+1))]=$temp
		fi
	done
done
echo "descending order"
echo ${computeResult[@]}

#sorting ascending order
echo "ascending order"
for((c=${#computeResult[@]};c>0;c--))
do
	echo $((computeResult[$(($c-1))]))
done
