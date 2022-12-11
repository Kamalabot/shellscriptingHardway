#!/usr/bin/env bash
###########The above line shebang gets this script executed by bash############
#                                                                             #
#   A Script to maintain the user details database                            #
#                                                                             #
###############################################################################
#
#
#This scripts requests for the user details. And it is fully commented
echo "\n\t\tSHELL PROGRAMMING DATABASE"
export store=user.dat
#Start by asking what user wants to do. 
[ ! -f $store ] && > $store
while true
do
  read -p "What you would like to do [create / view / search / delete]: " CHOICE
  #Start the Case check and do the necessary execution
  case $CHOICE in
    create|Create|CREATE)
      #Request First Name
      echo "Enter your First Name:"
      read   name_f
      #Request Last Name
      echo "Enter your Last Name:"
      read  name_l
      #Request Address
      echo "Enter your address:"
      read  address
      #Request City
      echo "Enter your city:"
      read  city
      #Request State
      echo "Enter your State:"
      read  state
      #Request Zip
      echo "Enter Zip Code:"
      read  zip
      echo "this is a trial" 
      read -p "trial:" RAM
      echo "This RAM gets printed "$RAM
      #store the above data inside the file,that is referenced by variable called store
      echo $name_f:$name_l:$address:$city:$state:$zip >> $store
      echo The $store file is updated
      ;;
    view|View|VIEW)
          
      # Show what is currently written to the file
      #
      (
        echo
        echo
        echo Here is the data in the file
        cat $store
      )
      echo
      echo There are `cat $store | wc -l` lines in the database
      ;;
    search|Search|SEARCH)
      echo What you want to search?
      read -p "Enter your search term: " SH
      echo "Your search term is $SH"
      ;;
    delete|Delete|DELETE)
      echo What you are planning to delete?
      read -p "Provide the deletion term: " DL
      echo "Your deletion term is $DL"
      ;;
    q)
      exit 0
      ;;
    *)
      echo "There is no such a choice. Re-check"
      ;;
  esac
done
