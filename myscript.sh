#!/bin/bash
ls
myvar= cat  ~/.ssh/authorized_keys
echo $myvar
file="a*"
lsvar=$( ls | grep $file)
echo $lsvar
