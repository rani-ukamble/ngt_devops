#!/bin/bash

CPU=$(bash modules/cpu.sh)
MEMORY=$(bash modules/memory.sh)
DISK=$(bash modules/disk.sh)
NETWORK=$(bash modules/network.sh)
SERVICE=$(bash modules/service.sh)

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

cat <<EOF > reports/report.json
{
    "timestamp":"$TIMESTAMP",
    "cpu_usage":"$CPU",
    "memory_usage":"$MEMORY",
    "disk_usage":"$DISK",
    "network_status":"$NETWORK",
    "service_status":"$SERVICE"
}
EOF