#!/bin/bash

#echoerr() { echo "$@" 1>&2; }

#for file in `find . -name '*.nt.bz2'`; do
for file in `ls -1 *.nt.bz2`; do
    tmp=`tempfile`
    bzcat "$file" | rapper -i ntriples - http://example.org/ | pbzip2 -c > "$tmp"
    mv "$tmp" "$file"
done
