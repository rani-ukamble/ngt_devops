#!/bin/bash

log_message() {

    level=$1
    message=$2

    timestamp=$(date '+%Y-%m-%d %H:%M:%S')

    echo "[$timestamp] [$level] $message" | tee -a "$LOG_FILE"
}