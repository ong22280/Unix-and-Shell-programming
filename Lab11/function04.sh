#!/bin/bash

domain=$1
out=""

usage() {
    echo "Usage: $0 domain"
    exit 2
}

function to_lower() {
    local str="$@"
    local output
    output=$(echo "$str" | tr '[:upper:]' '[:lower:]')
    # ouput=$(tr '[A-Z]' '[a-z]' <<< "${str}")
    echo "$output"
}

[ $# -eq 0 ] && usage

to_lower "This Is a TEST"

out=$(to_lower ${domain})

echo "Domain: $out"
