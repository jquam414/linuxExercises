#!/bin/bash

echo "usage: mean.sh <column> [file.csv]"
column=$1
file=$2

# write if statement to handle if no file is
# if should then be file=/dev/stdin

# want to make the file from stdin if not file.csv is specified

echo "file=$file, column=$column"

# Then I want to use a pipeline

cat $file | cut -d , -f $column | tail -n +2 | { sum=0; line_count=0; while read n; do sum=$(($sum + $n)); line_count=$(($line_count + 1)); done; echo $sum/$line_count; } | bc -l
