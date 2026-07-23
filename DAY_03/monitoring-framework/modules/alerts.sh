#!/bin/bash

source config.sh
source logger.sh

CPU=$(bash modules/cpu.sh)
MEM=$(bash modules/memory.sh)
DISK=$(bash modules/disk.sh)

if (( ${CPU%.*} > CPU_THRESHOLD ))
then
    log_message "ALERT : CPU usage exceeded threshold"
fi

if [ "$MEM" -gt "$MEMORY_THRESHOLD" ]
then
    log_message "ALERT : Memory usage exceeded threshold"
fi

if [ "$DISK" -gt "$DISK_THRESHOLD" ]
then
    log_message "ALERT : Disk usage exceeded threshold"
fi
