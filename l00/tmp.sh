#!/bin/sh

SYSSIZE=$(ls -l tools/system \
	| grep system | cut -c25-31 | tr '\012' ' ')
SYSSIZE=$((($SYSSIZE + 15) / 16))

echo -n "SYSSIZE = " $SYSSIZE "\n"> tmp.s
cat boot/boot.s >> tmp.s
