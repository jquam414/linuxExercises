#!/bin/bash

echo "usage: mean.sh <column> [file.csv]"

column=$1

if [[ $# -eq 2 ]]; then
    file=$2
elif [[ $# -eq 1 ]]; then
    file=/dev/stdin
else
    echo "no column or file provided, use 'C-d' to exit"
fi

cat $file | cut -d , -f $column | tail -n +2 | { sum=0; line_count=0; while read n; do sum=$(($sum + $n)); line_count=$(($line_count + 1)); done; echo $sum/$line_count; } | bc -l
