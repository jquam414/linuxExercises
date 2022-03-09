#!/bin/bash

# Remove existing five directory and all files within
rm -rf five


# Make directory five 
mkdir five

# Make five subdirectories five/dir1 -> five/dir5
for num in {1..5}; do
    mkdir five/dir$num;

    # Make four files file1 -> file4 in each subdirectory
    for filenum in {1..4}; do
	> five/dir$num/file$filenum

	# Enter lines into file
	for ((linenum = 1; linenum <= $filenum; linenum++)); do
	     echo $filenum >> five/dir$num/file$filenum
	done
    done
done


