#!/usr/bin/env bash

choices=(
  "Lock"
  "Suspend"
  "Hibernate"
  "Logout"
  "Reboot"
  "Shutdown"
)

sel="$(printf '%s\n' "${choices[@]}" | fuzzel --dmenu)"

case "$sel" in
  "Lock")       loginctl lock-session ;;
  "Logout")     loginctl terminate-session "$XDG_SESSION_ID" ;;
  "Reboot")     systemctl reboot ;;
  "Shutdown")   systemctl poweroff ;;
  "Hibernate")  systemctl hibernate ;;
  "Suspend")    systemctl suspend ;;
esac
