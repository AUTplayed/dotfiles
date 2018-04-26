#!/bin/bash
# constants
fragpath=~/.config/slop/boxzoom.frag

# magnifier level
if [ -z "$1" ]; then
	mag=$(i3-input | grep output | sed 's/^.*= //')
	if [ -z "$mag" ]; then
		mag=2
	fi
else
	mag="$1"
fi

echo "$mag"

# magnifier size
sizes=$(xrandr | grep " connected" | grep -o -E "[0-9]*x.*\+" | sed "s/+.*//")
maxsize() {
	echo "$(echo "$1" | awk '{s+=$1} END {print s}')"
}
maxx=`maxsize "$(echo "$sizes" | sed "s/x.*//")"`
maxy=`maxsize "$(echo "$sizes" | sed "s/.*x//")"`
maxx=$((maxx*2))
maxy=$((maxy*2))

echo "$maxx" "$maxy"

# insert into .frag
sed -i -r "17 s/[0-9]+\.?[0-9]*/$mag/" $fragpath
sed -i -r "13 s/[0-9]+/$maxx/" $fragpath
sed -i -r "14 s/[0-9]+/$maxy/" $fragpath

slop -r boxzoom
