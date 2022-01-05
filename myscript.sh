#!/bin/bash 

source ./env 

echo "Hello World"


echo "The time now is $(date | cut -d ' ' -f 5,6)"
echo " Connecting to $Web_IP"
scp -i $PRIVATE_KEY -r $SOURCEFILES ubuntu@$Web_IP:~/
scp -i $PRIVATE_KEY ./web.sh ubuntu@$Web_IP:~/
ssh -i $PRIVATE_KEY ubuntu@$Web_IP bash ~/web.sh
