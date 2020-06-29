#! /bin/bash
#usage
#provide an IPsource / list of IPs 
#provide an output name
#provide a password
#Exampel ./Auto_curl.sh <Ipsource/$1> <password/$2>
#this is for a specific use case in which there is no user name and a password.  The script waits for 5.5 seconds and moves on if no response is received. In testing this was enough to make a determination. 

for i in $(cat $1); do
    query="$(curl --max-time 5.5 -u '':$2 $i)"
    echo "####Output for $i###" >> $1.output.txt
    echo "$query" >> $1.output.txt
done
