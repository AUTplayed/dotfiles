#!/bin/bash
killall polybar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    export MONITOR=$m && echo $MONITOR && polybar -q --reload example & >/dev/null >&/dev/null
  done
else
  polybar --reload example &
fi
