#!/bin/bash

if [ -z "$1" ]; then
	dest=~
else
	dest="$1"
fi

copyover() {
	cp -rf "$1" "$dest"
}

shopt -s dotglob
me=$(basename $0)
for f in *; do
	if [[ ! $f =~ $me.* ]]; then
		echo "$f"
		copyover "$f"
	fi
done


