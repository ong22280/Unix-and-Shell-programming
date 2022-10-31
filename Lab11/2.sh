#!/bin/bash
trap "echo 'Receive SIGINT'" SIGINT # ctrl+c
trap "echo 'Receive SIGTERM'" SIGTERM # kill -TERM

function check_error_input() {
    if [[ $# != 1 || ! -s "$1" || ! -r "$1" ]]; then
        exit 1
    fi
}

function compile {
    local file=$1
    local output
    output=$(./compile.sh $file 2>&1) & 
    process_id=$!
    wait ${process_id}
    echo ${output}
}

input=$1
file=${input##*/}
check_error_input $file
answer=$(compile $file)
exit ${answer}