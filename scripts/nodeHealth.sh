#!/bin/bash

#Author : Ashwin Kumar
#Date : 18/10/2025
#
#
#This scrpit output the node health
#
#Verion V1

echo "print the disk space"
df -h

echo "print the no of CPU"
nproc

echo "print the memory sapce"
free -g

set -x #debug mode 
set -e exit the script when ther is an error 
set -o pipefail

df -h
nproc
free -g
ps -ef | grep | amazon | awk -F" " '{print $4}'




















