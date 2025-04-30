#!/bin/bash

PIPE=/tmp/cava.fifo

# Clean and recreate pipe
rm -f "$PIPE"
mkfifo "$PIPE"

# Run cava and output raw bars to FIFO
cava -p <(echo "
[output]
method = raw
raw_target = $PIPE
framerate = 30
bars = 14
") > /dev/null
