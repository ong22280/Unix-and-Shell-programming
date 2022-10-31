#!/bin/bash
month=`date +%m`
if [[ $month = "11" || $month = "12" || $month = "01" || $month = "02" ]]
then
    printf "winter\n"
elif [[ $month = "03" || $month = "03" || $month = "03" || $month = "06" ]]
then
    printf "summer\n"
elif [[ $month = "07" || $month = "09" || $month = "10" ]]
then
    echo "rainy"
fi