#!/usr/bin/bash

#script takes a filename, starting and ending line provides the data between those lines
read -p "Provide the filename, Starting Line and Ending line respectively: " file start end

#echo out the data provided by the user
if [ -f $file ];
#if file name is valid condition
then
  echo The filename is $file. Starting line is $start. Ending line is $end
  fileline=$(wc -l $file|cut -d" " -f1)
  #echo out the number of lines in the file
  echo Total number of lines in the file is $fileline
  #calculate the actual start required
  actualstart=`expr $fileline - $start`
  #echo out the actual start
  echo The actual start is $actualstart

  echo start of file data
  echo
  tail -n $actualstart $file | head -n $end
#if file name is not valid 
else
  echo Enter file name that exists
fi

#Additional checks like the number of line requested, how far the ending from the 
#file ending line can be checked and updated
