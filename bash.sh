#!/bin/bash

sum=0
count=0

read -p "The input start... " start
read -p "The end start... " end

if [[ -z $start || -z $end ]]; then
  echo Your inputs is incorrect
  exit 1
fi

for (( current = $start; current < $end + 1; ++current )) 
{
  if [[ $(($current % 2)) -eq 0 ]]; then
    let "sum += current"
    let "++count"
  fi
}

echo $((sum / count))
