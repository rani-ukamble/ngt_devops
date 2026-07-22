#!/bin/bash

source config.sh
source logger.sh

source modules/cpu.sh
source modules/memory.sh
source modules/disk.sh
source modules/network.sh
source modules/service.sh
source modules/alerts.sh

mkdir -p logs reports

log_message INFO "Monitoring Started"

cpu=$(get_cpu_usage)
memory=$(get_memory_usage)
disk=$(get_disk_usage)
network=$(get_network_stats)

log_message INFO "CPU Usage: ${cpu}%"
log_message INFO "Memory Usage: ${memory}%"
log_message INFO "Disk Usage: ${disk}%"
log_message INFO "$network"

echo "----------------------------------"
echo "System Health Report"
echo "----------------------------------"
echo "CPU Usage    : $cpu%"
echo "Memory Usage : $memory%"
echo "Disk Usage   : $disk%"
echo "$network"
echo "----------------------------------"

echo ""
echo "Service Status"
echo "----------------------------------"

for service in "${SERVICES[@]}"
do
    status=$(check_service "$service")

    echo "$service : $status"

    log_message INFO "$service : $status"

    if [ "$status" = "STOPPED" ]
    then
        echo "ALERT: $service service is DOWN"

        log_message ALERT "$service service is DOWN"
    fi

done

check_alerts "$cpu" "$memory" "$disk"

log_message INFO "Monitoring Completed"