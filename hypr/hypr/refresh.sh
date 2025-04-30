#!/bin/bash

# Refresh Waybar by sending SIGUSR2
if pgrep waybar > /dev/null; then
    pkill -SIGUSR2 waybar
    echo "Waybar refreshed."
else
    echo "Waybar is not running."
fi
