#!/bin/bash

alist () 
{
    ls -l $1 | head
}

alist set01.sh
alist allpara.sh
alist