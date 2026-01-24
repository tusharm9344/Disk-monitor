#!/bin/bash
THRESHOLD=80
df -h|grep '^/dev/'|while read line ; do
USAGE=$(echo "$line"|awk '{print $5}'|sed 's/%//')
PARTITION=$(echo "$line"|awk '{print $1}')
if [ "$USAGE" -ge "$THRESHOLD" ] ; then
echo "ALERT $THRESHOLD usuage is above $USUAGE % " >> report.log
else 
echo "OK  $PARTITION is at $USAGE % usage" >>report.log
fi
done

