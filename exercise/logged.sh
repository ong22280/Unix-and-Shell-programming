#!/bin/bash
last -w | grep $1 | cat -n | tail -1 | sed 's/ *//'