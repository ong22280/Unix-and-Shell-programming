#!/bin/bash

add () {
    (( res = $1 + $2 ))
    return $res
}

add 4 5
echo $?
add 42 96
echo $?