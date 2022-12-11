#!/usr/bin/env bash
#Script introduces to the functions in shell scripting

backup_files()
{
  for fname #short for "for fname in $*"
  do
    cp $fname bacup/
    echo $fname is copied
  done
}

#backup_files *.sh

valid_file()
{
    [ ! -r $1 ] && return 1
    grep LOGFILE $1 > /dev/null || return 1
    return 0
}

chek_function() #checks if file contains word function
{
    [ ! -r $1 ] && return 1
    grep function $1 > /dev/null || return 1
    return 0
}

if chek_function tests.sh; 
then
  echo Yes there is function
else
  echo No Dice
fi
