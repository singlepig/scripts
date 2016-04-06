#!/bin/bash

# this shell is written for converting CRLF to LF

for filename in $@; do
    # if file note exsit, do nothing
    if [[ -e $filename ]]; then
        cat $filename | tr -d "\r" > "$filename.tmp"
        mv "$filename.tmp" "$filename"
    else
        echo "error: $filename not exsit!"
    fi
done
    
