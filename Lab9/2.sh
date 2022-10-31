#!/bin/bash
# show positional parameters in a loop
echo $#
for i in $*
    do
    echo $i
done