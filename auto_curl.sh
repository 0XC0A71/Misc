#! /bin/bash
#note: Update this to the usage command 
#provide an IPsource
#provide an output name
#Exampel ./auto_curl.sh IPsource curlout.txt


for i in $(cat $1); do
    query="$(curl --max-time 5.5 -u '':sys1 $i)"
    echo "####Output for $i###" >> $2
    echo "$query" >> $2
done
