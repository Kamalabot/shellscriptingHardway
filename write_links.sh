#!/bin/bash
#
#This script lists the files in the folder, and creates the github links based on the folder name
#
touch file_list.txt
write_file=file_list.txt
appendage="https://github.com/kamalabot/json_data_repo/"
folder_name=$1
full_append=$appendage$folder_name"/"
echo $full_append

for files in *.json
do
  #[ ! $files  ] && echo $full_append+$files >> $write_file
  echo $full_append$files >> file_list.txt 
done

