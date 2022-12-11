#!/usr/bin/env bash

read -p "Enter the filename to check: " FILENAME
echo $FILENAME

if test -z "$FILENAME"
#alias of test is "[". The above condition can be written as [ -z "$FILENAME" ]
then
    echo Enter a filename. Willya?
elif test -f "$FILENAME" -a -w "$FILENAME"
then
    echo All Well
else
    echo get a writable file
fi
