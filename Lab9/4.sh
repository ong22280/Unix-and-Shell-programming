#!/bin/bash
# find newest file from a list of files passed as parameters
time1=`ls -l $1 | cut -f7,8 -d' '`
time2=`ls -l $2 | cut -f7,8 -d' '`
time3=`ls -l $3 | cut -f7,8 -d' '`
if [[ $time1 > $time2 && $time1 > $time3 ]]; then
    echo $1
elif [[ $time2 > $time1 && $time2 > $time3 ]]; then
    echo $2
else
    echo $3
fi