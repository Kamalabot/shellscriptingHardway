#!/usr/bin/env bash

#This script takes care of the while loop with numbers

read -p "Give a count" count
i=1
while [ $i -le $count ]
do
  echo "this is loop $i of $count"
  i=`expr $i + 1` 
done
