#!/usr/bin/env bash

choices=(
    "Calendar"
    "Bluetooth"
    "Volume"
    "Power Menu"
)

sel="$(printf '%s\n' "${choices[@]}" | fuzzel --dmenu)"

case "$sel" in
  "Calendar")       ~/.config/scripts/calendar.sh ;;
  "Bluetooth")       ~/.config/scripts/bluetooth.sh ;;
  "Volume")       ~/.config/scripts/volume.sh ;;
  "Power Menu")       ~/.config/scripts/power-menu.sh ;;
esac
