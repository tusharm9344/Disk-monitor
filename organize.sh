#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="$SCRIPT_DIR/log"
FILE_DIR="$LOG_DIR/report.log"
mkdir -p "$(LOG_DIR)"
THRESHOLD=80
df -h|grep '^/dev/'|while read line ; do
USAGE=$(echo "$line"|awk '{print $5}'|sed 's/%//')
PARTITION=$(echo "$line"|awk '{print $1}')
if [ "$USAGE" -ge "$THRESHOLD" ] ; then
echo "ALERT $THRESHOLD usuage is above $USUAGE % " >> "$LOG_DIR"
else 
echo "OK  $PARTITION is at $USAGE % usage" >> "$LOG_DIR"
fi
done

