#!/bin/bash

if [[ ! -s "$1" ]]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
if [[ ! -r "$1" ]]; then
    echo "Error: $1 is not readable"
    exit 1
fi