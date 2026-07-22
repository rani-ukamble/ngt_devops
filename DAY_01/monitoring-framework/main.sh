#!/bin/bash

source config.sh
source logger.sh

source modules/cpu.sh
source modules/memory.sh
source modules/disk.sh

mkdir -p logs reports

log_message INFO "Monitoring Started"

cpu=$(get_cpu_usage)
memory=$(get_memory_usage)
disk=$(get_disk_usage)

log_message INFO "CPU Usage: ${cpu}%"
log_message INFO "Memory Usage: ${memory}%"
log_message INFO "Disk Usage: ${disk}%"

echo "----------------------------------"
echo "System Health Report"
echo "----------------------------------"
echo "CPU Usage    : $cpu%"
echo "Memory Usage : $memory%"
echo "Disk Usage   : $disk%"
echo "----------------------------------"

log_message INFO "Monitoring Completed"