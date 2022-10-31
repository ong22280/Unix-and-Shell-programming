#!/bin/bash
trap "echo 'Receive SIGFPE'" SIGFPE # kill -FPE

c=$1
name="${c%.*}"
input="${name}.input"
output="${name}.output"

gcc $c -o $name 2>/dev/null
complie_status=$?

# if gcc compile error, exit
if [[ $complie_status -ne 0 ]]; then
    echo 2
else
    timeout 5 ./${name} $input > /tmp/output.txt
    timeout_status=$?
    if [[ $timeout_status -eq 124 ]]; then
        echo 3
    else
        diff /tmp/output.txt $output > /dev/null
        if [ $? -eq 0 ]; then
            rm /tmp/output.txt
            echo 0
        else
            rm /tmp/output.txt
            echo 1
        fi
    fi
fi
