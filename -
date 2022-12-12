#!/usr/bin/env bash
###########The above line shebang gets this script executed by bash############
#                                                                             #
#   A Script to maintain the user details database                            #
#                                                                             #
###############################################################################
#
#
#This scripts requests for the user details. And it is fully commented
echo SHELL PROGRAMMING DATABASE
#Function to get user choice in multiple location in the below program
########Functions used in main programs############
yesno()
{
  # Loop to until vaid choice is recd.
  while :
  do
    # Display allowable string of characters
    #
    read -p "$* (y/n):" yn junk
#case where it is an affirmative
    case $yn in
      y|Yes|yes)
        echo this is yes
        return 0 
        ;;
#case where it is a negative
      n|No|no)
        echo this is no
        return 1 
        ;;
#rest of other cases there is a repeat message requesting either yes or no
      *)
        echo please enter Yes or no:
        ;;
    esac
  done
}

create_file(){
#create a environment variable for the name the file you are planning to store
  export store=user.dat
#If the file is not there, then create it using > option. It creates the file
  [ ! -f $store ] && > $store
}

#The function to get the input from the user for the various records
create_record(){
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
}
#Function to add the record to the file that is already designated
add_data(){
  echo Adding your data to $fname
  echo "$name_f:$name_l:$address:$city:$state:$zip" >> $store
  echo added the record to file
}
#Function to show the file data for viewing
show_file(){
      (
        echo
        echo
        echo Here is the data in the file
        sort -t : +1 $store | awk -F : '{printf("%-14.14s %-16.16s %-20.20s %-15.5s %-6.6s  \
          %-5.5s\n", $1, $2, $3, $4, $5, $6)}'
      )
      echo
      echo There are `cat $store | wc -l` lines in the database
    }
#Function to search the file is shown here
search_term(){
  echo What you want to search?
  read -p "Enter your search term: " SH
  echo "Your search term is $SH"
  grep $SH $store
}
#Function to delete the line
delete_line(){
echo What you are planning to delete?
      read -p "Provide the deletion term: " DL
      echo "Your deletion term is $DL"
      #the sed command only deletes the line containing the deletion term. 
      sed /$DL/d $store 
      #the data in the file is not yet deleted
      cat $store
}

########################Functions end##################
#######################Main Program begins############
#Function call to create file. The file name will be 'user.dat' and created if not existing
create_file
echo "File $store created."
#Starting the choice display section 
while true
do
  read -p "What you would like to do [create / view / search / delete]: " CHOICE
  #Start the Case check and do the necessary execution
  case $CHOICE in
    create|c|Create|CREATE)
      create_record
      echo "You are about to add f_name:$name_f l_name:$name_l address:$address \
              city: $city state: $state zip: $zip"
      if yesno Do you want to add the record 
      then 
        add_data
      else
        echo !!!Aborting!!!
        read -p "what you would like to do[create/ view / search / delete]: " CHOICE
      fi
       ;;
    view|v|View|VIEW)
      #showing the data inside the file using the function call
      show_file      
      ;;
    search|Search|SEARCH)
      search_term 
     ;;
    delete|Delete|DELETE)
      delete_line
     ;;
    q)
      if yesno You want to seriously quit
      then
        exit 0
      else
        continue
      fi
      ;;
    *)
      echo "There is no such a choice. Re-check"
      ;;
  esac
done
