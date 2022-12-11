#!/usr/bin/env bash

#Program to share the details of the running status
#
echo Details of logins and proceses

echo Number of possible users is $(cat /etc/passwd | wc -l)
echo Number of users logged in $(who | wc -l)
echo Number of processes running $(ps -ef | wc -l)
