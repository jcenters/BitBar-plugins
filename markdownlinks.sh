#!/bin/bash

LINKFILE=~/Documents/SyncThing/links.md

echo "Bookmarks"
echo "---"
while read line; do
	[ -z "$line" ] && continue
	LINKNAME=`echo $line | sed 's/^.*\[//;s/\].*$//'`
	LINK=`echo $line | sed 's/^.*(//;s/).*$//'`
	echo "$LINKNAME|href=$LINK"
done <$LINKFILE