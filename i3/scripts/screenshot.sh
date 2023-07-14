#!/bin/bash

out='/home/vvin/Pictures/screenshot/%Y-%m-%d-%T-screenshot.png'
clip='xclip -selection clipboard -t image/png -i $f'

case $1 in
  "select") scrot "$out" --select --line mode=edge -e "$clip" || exit ;;
  "window") scrot "$out" --focused --border -e "$clip" || exit ;;
  *) scrot "$out" -e "$clip" || exit ;;
esac

notify-send "Screenshot taken."
