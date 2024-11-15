#!/bin/bash

commandname=htop
command=/usr/bin/$commandname

if [ -f $command ] 
then
	echo "$command is available, lets run it.."
else
	echo "$command not available, installing it ..."
	sudo apt update && sudo apt install -y $commandname
fi

$commandname
