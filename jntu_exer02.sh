#!/bin/bash
#
#Script deletes the lines containing certain words in all the files given as arguments to it
#
#The action can be accomplished using sed. 
#The output has to be stored back in to file by over-writing them seems to be not possible
#Planning to use the filename called "newFile"
#
echo Provided filename are $*
word=fish

for f in $*
do
  if [ -f $f ]
  then
    echo $f is a file
    #removing the lines and writing it to modified file
    sed /$word/d $f > $f.tmp 

  else
    echo $f is not a file. Please give a file that is valid
  fi
done
