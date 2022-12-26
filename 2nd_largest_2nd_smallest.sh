#!/bin/bash
arr=(259 570 663 690 707 707 712 744 768 )
len=${#arr[@]}
temp=0

for (( i=0; i<$len; i++ ))
do
	for ((  j=i+1; j<$len; j++ ))
	do
	  if [  ${arr[i]}  -lt ${arr[j]} ]
	   then
		temp=${arr[i]}
		arr[i]=${arr[j]}
		arr[j]=$temp
	  fi
	done
    done
echo "${arr[@]}"
echo "second largest number is:${arr[1]}"
echo "second smallest number is:${arr[7]}" 
