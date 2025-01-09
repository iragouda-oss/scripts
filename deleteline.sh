#!/bin/bash

path=$1
path=$2
ls -ltr $1 | awk 'NR>1{print $NF}' > s1
total=$(cat s1 | wc -l)
echo "total files present in $1 is $total"
while read line
do
	if [ $total -gt $count ]; then
		rm -rf $path/$line
		total=`expr $total -1`
	fi
done < s1

