#!/bin/bash

PIPE=/tmp/cava.fifo
[ -p "$PIPE" ] || exit 1

while read -r line; do
    # Convert numbers to bars (▁▂▃▄▅▆▇█)
    bars=""
    for n in $line; do
        case "$n" in
            [0-1]*) bars+="▁";;
            [2-2]*) bars+="▂";;
            [3-3]*) bars+="▃";;
            [4-4]*) bars+="▄";;
            [5-5]*) bars+="▅";;
            [6-6]*) bars+="▆";;
            [7-7]*) bars+="▇";;
            *)      bars+="█";;
        esac
    done
    echo "{\"text\": \"$bars\"}"
done < "$PIPE"
