#!/usr/bin/env bash
#
#This script does multiple grep related activities on the file supplied to it
#
file=$1
grep '^T' $file 
echo 
echo Those were lines that started with T
echo
grep '^$' $file
echo
echo Those are the blank lines
echo 
grep 'aa' $file
echo
echo Those are the lines with a
grep '[0-9][0-9]$' $file


