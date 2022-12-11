#!/usr/bin/env bash

#Program collects the user input like name phone number and stores into data.out
#
#Requesting the name via Echo and reading the input into NAME
echo Enter your name: 
read NAME
#Requesting the address and reading it into ADDRESS variable
echo Enter your Address:
read ADDRESS
#Requesting the phone number and reading it into Phone variable
echo Enter your Phone:
read PHONE
#Reading out the variable values into the file called data.out
echo Name:$NAME >> data.out
echo Address: $ADDRESS >> data.out
echo Phone: $PHONE >> data.out
#echoing out the final confirmation
echo The details are store into data.out file
