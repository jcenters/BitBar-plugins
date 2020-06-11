#!/bin/bash

LINKFILE=~/Documents/urls.txt

echo "URLS"
echo "---"
while read line; do
	echo "$line|href=$line"
done <$LINKFILE