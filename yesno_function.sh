#!/usr/bin/env bash

#
# yesno()
#
# A function that takes user input and converts into true 
# or false the shell can read
#
yesno()
{
  # Loop to until vaid choice is recd.
  while :
  do
    # Display allowable string of characters
    #
    read -p "$* (y/n):" yn junk

    case yn in
      y|Yes|yes)
        echo this is yes
        return 1
        ;;
      n|No|no)
        echo this is no
        return 0
        ;;
    esac
  done
}


        
