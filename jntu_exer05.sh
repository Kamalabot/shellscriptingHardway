#!/bin/bash
#
#This file will calculate the factorial of given number
#
read -p "Enter the number for which factorial is required: " fact 

echo The entered number is $fact

for num in {1..$fact}
do
  echo $num * 2
done
