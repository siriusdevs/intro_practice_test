#!/bin/bash
len = 0
val = 0

if [[ $# -ne 2 ]]
then echo "Переданы не все аргументы"
exit 1
fi

for (( i = $1; i <= $2; i++ ))
{
    if [[ $(($i % 2)) -eq 0 ]]
    then
    let val=$(($val + $i))
    let len=$(($len + 1))
    echo $len $val
    fi
}

echo $(($val / $len))