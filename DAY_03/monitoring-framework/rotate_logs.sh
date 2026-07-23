#!/bin/bash

LOGFILE="logs/monitoring.log"

MAX_SIZE_MB=5

if [ -f "$LOGFILE" ]
then

SIZE=$(du -m "$LOGFILE" | cut -f1)

if [ "$SIZE" -ge "$MAX_SIZE_MB" ]
then

mv "$LOGFILE" \
"logs/monitoring_$(date +%Y%m%d_%H%M%S).log"

touch "$LOGFILE"

fi

fi