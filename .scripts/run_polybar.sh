#!/bin/bash
killall polybar
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	export MONITOR=$m && \
		export WIFI=$(ls /sys/class/net | grep wl) && \
		export ETHERNET=$(ls /sys/class/net | grep e) && \
		echo "$MONITOR $WIFI $ETHERNET" && \
		polybar -q --reload example >/dev/null >&/dev/null &
done
