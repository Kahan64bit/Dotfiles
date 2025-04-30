#!/bin/bash

CHOICE=$(echo -e " Lock\n⏾ Sleep\n Restart\n⏻ Shutdown" | wofi --dmenu --width 250 --height 250)

case "$CHOICE" in
    " Lock")     hyprctl dispatch exec "hyprlock" ;;
    "⏾ Sleep")    systemctl suspend ;;
    " Restart")  systemctl reboot ;;
    "⏻ Shutdown") systemctl poweroff ;;
esac
