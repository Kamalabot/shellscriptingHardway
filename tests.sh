#I want to test if the directory exists

if [ -d /usr/share/java ];
then
    echo "The folder exists"
else
    echo "Sorry no folder"
fi


if [ -a /etc/shadouw ];
then
    echo "The file exists"
    sudo cat /etc/shadow
else
    echo "Sorry no file"
fi

echo "this is start of for looop"

#for VARI in $(); do
 #       commands
#done

for ACTIONS in $(cat actionItem.txt); do
    echo "The action items are: $ACTIONS"
done

echo "Enter the subnet will ya?"
read SUBN

for IP in $(seq 100 105); do
        echo pinging $SUBN.$IP
done