#!/bin/bash 

source ./env 

echo "Hello World"


echo "The time now is $(date | cut -d ' ' -f 5,6)"
echo " Connecting to $Web_IP"

