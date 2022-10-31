#!/bin/bash
printf "The program name is: %s\n" $0
printf "Number of arguments: %d\n" $#

echo 'Display arguments as a single string ($*):'
i=0
for arg in "$*"
do
    (( i = i + 1 ))
    echo "Arg $i: $arg"
done

echo 'Display arguments as a single string ($@):'
i=0
for arg in "$@"
do
    (( i = i + 1 ))
    echo "Arg $i: $arg"
done