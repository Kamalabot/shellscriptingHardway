#!/bin/bash

echo "this is the first useful shell script"
echo "Please choose what you want to do"

choice="Encrypt Decrypt"

select opt in $choice; do

    if [ $REPLY = 1 ];
        then
            echo "So you want to Encrypt? Fine"
            echo "Give me a file name"
            read file; #note the variable name is "file" here 
            gpg -c $file #variable value is given as input to gpg
            echo "There you go, file is encrypted"
        else
            echo "Decrypt??? Fine"
            echo "Give me a file name. hope you know the passphrase"
            read file1; #note the variable name is "file" here 
            gpg -d $file1 #variable value is given as input to gpg
            echo "There you go, file is decrypted"
            
     fi
     
done