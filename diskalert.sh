#!/bin/bash
threshold=85
usage=$(df / | grep / | awk '{print$5}' | sed 's/%/ /g')
if [ "$usage" -gt "$threshold" ]; then
 echo "disk usage is above $threshold%"
fi

