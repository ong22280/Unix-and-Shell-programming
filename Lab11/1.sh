#!/bin/bash

cleanup ()
{  
    if [ -e $msgfile ]; then
        rm $msgfile
    fi
    exit
}

trap cleanup SIGINT SIGTERM
msgfile=/tmp/msg$$
cat > $msgfile
sleep 1
rm $msgfile