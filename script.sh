#!/bin/bash

x=$1
y=$2
c=$(($x%2))

if [[ $c != 0 ]]
then
    x=$(($x + 1))
fi
sum=0
k=0
for ((i=x;i<=y;i+=2))
{
    sum=$(($sum + $i))
    k=$(($k + 1))
}

echo $(($sum / $k))