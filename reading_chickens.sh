#!/usr/bin/env bash

#This scripts goes on questioning until Chickens are given as answer
read -p "Which is the greatest thing in this world" answer

#Starting the while loop
while [ $answer != Chickens ]
do
  echo That is incorrect. Try again??
  read -p "Your retry here: " answer
done
