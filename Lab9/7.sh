#!/bin/bash
# calculate date distances from two string parameters
distances=0
m1=$(echo $1 | cut -f1 -d' ')
d1=$(echo $1 | cut -f2 -d' ' | cut -f1 -d',')
y1=$(echo $1 | cut -f3 -d' ')
if (($# == 1)); then
    m2=$(date | cut -f2 -d' ')
    d2=$(date | cut -f1 -d' ')
    y2=$(date | cut -f3 -d' ')
elif (($# == 2)); then
    m2=$(echo $2 | cut -f1 -d' ')
    d2=$(echo $2 | cut -f2 -d' ' | cut -f1 -d',')
    y2=$(echo $2 | cut -f3 -d' ')
else
    echo "You must at least provide a date!"
    exit 1
fi
if (($y1 == 0)); then
    echo "Error: occurred with argument #1, please provide a correct date!"
    exit 0
elif (($y2 == 0)); then
    echo "Error: occurred with argument #2, please provide a correct date!"
    exit 0
fi
if [[ $m1 = 'Sep' ]]; then
    m1=9
elif [[ $m1 = 'Oct' ]]; then
    m1=10
elif [[ $m1 = 'Nov' ]]; then
    m1=11
elif [[ $m1 = 'Dec' ]]; then
    m1=12
elif [[ $m1 = 'Jan' ]]; then
    m1=1
elif [[ $m1 = 'Feb' ]]; then
    m1=2
elif [[ $m1 = 'Mar' ]]; then
    m1=3
elif [[ $m1 = 'Apr' ]]; then
    m1=4
elif [[ $m1 = 'May' ]]; then
    m1=5
elif [[ $m1 = 'Jun' ]]; then
    m1=6
elif [[ $m1 = 'Jul' ]]; then
    m1=7
elif [[ $m1 = 'Aug' ]]; then
    m1=8
fi
if [[ $m2 = 'Sep' ]]; then
    m2=9
elif [[ $m2 = 'Oct' ]]; then
    m2=10
elif [[ $m2 = 'Nov' ]]; then
    m2=11
elif [[ $m2 = 'Dec' ]]; then
    m2=12
elif [[ $m2 = 'Jan' ]]; then
    m2=1
elif [[ $m2 = 'Feb' ]]; then
    m2=2
elif [[ $m2 = 'Mar' ]]; then
    m2=3
elif [[ $m2 = 'Apr' ]]; then
    m2=4
elif [[ $m2 = 'May' ]]; then
    m2=5
elif [[ $m2 = 'Jun' ]]; then
    m2=6
elif [[ $m2 = 'Jul' ]]; then
    m2=7
elif [[ $m2 = 'Aug' ]]; then
    m2=8
fi
if (( (y2 - y1) * 365 + (m2 - m1) * 30 + (d2 - d1) >= 0 )); then
    distances=$(( (y2 - y1) * 365 + (m2 - m1) * 30 + (d2 - d1) ))
    echo $distances
else
    distances=$(( (y1 - y2) * 365 + (m1 - m2) * 30 + (d1 - d2) ))
    echo $distances
fi