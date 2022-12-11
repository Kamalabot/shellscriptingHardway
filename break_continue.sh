#!/usr/bin/env bash

#This script is example for the break and continue

read -p "Give a filename: " file
#checks if a file is provided
while [ "$file" ]
do
  #check if the given file is directory
  if [ ! -d $file ];
  then
    echo Must be a directory, i changed my mind
    continue
  fi
  # If it is a directory then check how many files are there in it.
  if [ `ls $file | wc -l` -gt 3 ];
  then
    #stopping the program after finding a directory large enough
    echo stopping - Found a huge directory
    break
  fi

  read -p file
done
