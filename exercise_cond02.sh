#!/usr/bin/env bash

#This script reads a name, checks if it is writable and then writes to it
echo Start by providing a directory name
#Get the data from the user
read -p "Provide a directory name: " DIR
#Check if user has indeed provided the name
if [ -z $DIR ];
  then
    #If not provided, then ask again
    echo "provide a directory name."
elif [ -d $DIR -a -w $DIR ];
  #Check if the directory is indeed a directory and writable
  then
    echo "Okay it is a directory and it is writable"
    #Touch the file hello inside the directory
    cd $DIR && touch hello
else 
  #Inform that provided name is not a directory or it is not writable
  echo "Sorry it either not a director or not writable."
fi
