#!/usr/bin/env bash

#This file introduces the for loop
#
for fname in *.sh
do
  [ -s $fname ] && cat $fname 
done
echo completed first loop
pattern=ech

total=0
echo $pattern $total
for f in *.sh
do

    [ ! -f $f ] && continue #if not not file continue to next file
    if grep $pattern $f > /dev/null
    then
          size=`cat $f | wc -c`
          total=`expr $total + $size`  
    fi
done

echo The total size is $total. #Remember to write out the data 
