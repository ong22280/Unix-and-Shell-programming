#!/bin/bash

names=(aa bb cc dd ee)
for i in "${names[@]}"; do
    echo $i
done
# aa
# bb
# cc
# dd
# ee

echo

for i in "${names[*]}"; do
    echo $i
done
# aa bb cc dd ee

echo

echo Number of elements array: ${#names[@]} # 5
echo Number of elements array: ${#names[*]} # 5
echo Number of characters array: ${#names} # 2
echo Number of array: ${!names[@]} # 0 1 2 3 4
echo ${names[@]:0:2} # aa bb