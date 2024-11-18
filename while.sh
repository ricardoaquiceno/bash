#!/bin/bash
myvar=1

while [ $myvar -le 10 ]
do 
    echo $myvar
    myvar=$(($myvar + 1))
    sleep 0.5
done

#here we have to create the file before testing and 
# then delete it from the console
while [ -f ./testfile ]
do 
    echo "The file exists. $(date)"
    sleep 5
done
echo "The file no longer exists $(date)"