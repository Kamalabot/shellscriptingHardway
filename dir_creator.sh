#!/usr/bin/env bash

#This scripts goes on questioning until Chickens are given as answer
read -p "Enter a directory name: " dir 

#Starting the while loop
while [ ! -d $dir ]
do
  echo That is not a directory. Try again??
  read -p "Your retry here: " dir
done
