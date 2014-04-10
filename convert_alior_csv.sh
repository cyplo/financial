#!/bin/bash
echo "converting $1"
iconv -f cp1250 -t utf8 "$1" | while read line ; do
    DATE=`echo "$line" | cut -d';' -f1`
    DATE=`echo $(date -d "$DATE" "+%Y-%m-%d")`
    echo "$DATE;$line"
done

