#!/bin/bash
title=$(xtitle)
len=${#title}
maxlen=70
if [ $len -gt $maxlen ]; then
	diflen=$(expr $len - $maxlen)
	echo ..$(echo $title | cut -c $diflen-)
else
	echo $title
fi
