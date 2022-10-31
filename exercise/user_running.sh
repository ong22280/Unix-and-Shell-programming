#!/bin/bash
ps axo user:30,comm | grep $1 | tail -1 | awk '{print $2}'