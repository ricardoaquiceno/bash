#!/bin/bash

if [ $# -ne 3 ]
then
    echo "not enough argumrnts"
    exit 135
fi

echo "you entered $1,$2,$3"
