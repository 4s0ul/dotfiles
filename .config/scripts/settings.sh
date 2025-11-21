#!/usr/bin/env bash

choices=(
    "Calendar"
    "Bluetooth"
    "Volume"
    "Power Menu"
)

sel="$(printf '%s\n' "${choices[@]}" | fuzzel --dmenu)"

case "$sel" in
  "Calendar")       ~/.config/waybar/scripts/calendar.sh ;;
  "Bluetooth")       ~/.config/waybar/scripts/bluetooth.sh ;;
  "Volume")       ~/.config/waybar/scripts/volume.sh ;;
  "Power Menu")       ~/.config/waybar/scripts/power-menu.sh ;;
esac
