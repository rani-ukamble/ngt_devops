#!/bin/bash

check_alerts() {

    cpu=$1
    memory=$2
    disk=$3

    if [ "$cpu" -gt "$CPU_THRESHOLD" ]
    then
        log_message ALERT "High CPU Usage: ${cpu}%"
    fi

    if [ "$memory" -gt "$MEMORY_THRESHOLD" ]
    then
        log_message ALERT "High Memory Usage: ${memory}%"
    fi

    if [ "$disk" -gt "$DISK_THRESHOLD" ]
    then
        log_message ALERT "High Disk Usage: ${disk}%"
    fi
}