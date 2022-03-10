#!/bin/bash

#usage statement wrote to stderr
echo "usage: $0 <dir> <n>" 1>&2

#stores parameters

dir=$1
n=$2

#finds files within the directory provided that are larger than n bytes are removes them 

file2=$(find ./$dir -type f -size +${n}c -delete)



