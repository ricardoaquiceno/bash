#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log
#This will check if the os is a ubuntu system and run the related update comand.
check_exit_status() {
    if [ $? -ne 0 ]
    then
	    echo "An error ocurred, check the $errorlog file"
    fi
}

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file  
then 
    sudo apt update -y 1>> $logfile 2>>$errorlog
    check_exit_status
    sudo apt dist-upgrade -y 1>> $logfile 2>>$errorlog
    check_exit_status

fi
