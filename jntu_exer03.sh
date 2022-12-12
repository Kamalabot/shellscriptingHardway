#!/bin/bash
#
#This file lists ll the files current directory to which the user has read and write access
#
#list the files and checking the read, write and execute for the files
#
#echo `ls $1`
for f in `ls $1` 
do
  echo The file name is $f 
  if [ -f "$f" ] 
  then
    tail -n 1 "$f"
    echo `wc -l "$f"` is number of lines  
  fi
done
