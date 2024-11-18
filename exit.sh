#!/bin/bash

iperf2 >> log.log

if [ $? -eq "0" ]
then 
 echo "success"
else
 echo "not success" >> logfail.log
fi 
