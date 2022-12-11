NAME='locallorry'
echo "Is your name is $NAME"
SPORT="Ball"
echo Intersting sport is $SPORTball

echo Intersting sport is ${SPORT}ball

NOWORNEVER01="THIS IS STRING"
 
echo $NOWORNEVER01

echo Variable Input starts here
#This is a comment. Not having any impact
read -p "Enter your name: " NAME

echo Now my name prints as $NAME

echo "Now enter your full name for a change"

read FNAME LNAME

echo "Your full name is ${FNAME} ${LNAME}"

echo "This can be written as is: $FNAME $LNAME"

#Conditional statements start here

echo "On one CONDITION"

NAME="rooter"

if [ $NAME = "rooter" ];
then echo "Hooray"
fi

echo "lets check wheter you can type"

echo "Go ahead and type, asdfghijklmnopqo"

read -p "type here" typedata

if [ $typedata = "asdfghijklmnopqo" ];
then 
       echo "Great man"
else
       echo "seems you need to work a lot more"
fi
