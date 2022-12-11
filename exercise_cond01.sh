#!/usr/bin/env bash

echo This script will guide you on your retirement
#The user age is collected
read -p "Provide your age: " AGE
#User age is echoed back
echo Your age is $AGE
#Fixing the retirement age into a variable
RETIREMENT=57
#Comparing the AGE with RETIREMENT
if [ -z $AGE]; 
  then
    echo Please enter an age.
#Checked if the Age value is provided. If provided then proceed comparing
elif [ $AGE -gt $RETIREMENT ];
  then
   echo It is time for you to retire. 
elif [ $AGE = $RETIREMENT ]; 
  then
   echo You have one more year of tenure.
else 
  echo Enjoy your working productive age. 
fi


