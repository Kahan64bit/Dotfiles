wal -i /home/kahanp/Pictures/digital-art-isolated-house.jpg

#Extract the dominant colors
BORDER_COLOR=$(head -n 1 ~/.cache/wal/colors | cut -d '#' -f2)

#Update Hyprland border color
echo "col.active_border = rgb(BORDER_COLOR)" > ~/.config/hypr/colors.conf
echo "col.inactive_border = rgb(555555)" >> ~/.config/hypr/colors.conf

hyprctl reload
