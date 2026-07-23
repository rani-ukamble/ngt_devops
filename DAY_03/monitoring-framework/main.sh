#!/bin/bash

source config.sh
source logger.sh

echo "=================================="
echo " Linux Monitoring Framework"
echo "=================================="

CPU=$(./modules/cpu.sh)
MEM=$(./modules/memory.sh)
DISK=$(./modules/disk.sh)
NETWORK=$(./modules/network.sh)
SERVICE=$(./modules/service.sh)

echo "CPU Usage      : $CPU%"
echo "Memory Usage   : $MEM%"
echo "Disk Usage     : $DISK%"
echo "Network Status : $NETWORK"
echo "Service Status : $SERVICE"

echo ""
echo "Writing data to logs..."

log_message "CPU Usage : $CPU%"
log_message "Memory Usage : $MEM%"
log_message "Disk Usage : $DISK%"
log_message "Network Status : $NETWORK"
log_message "Service Status : $SERVICE"

echo "Checking alerts..."
./modules/alerts.sh

echo "Generating JSON report..."
./report.sh

echo ""
echo "Latest JSON Report:"
cat reports/report.json

echo ""
echo "Monitoring completed successfully."
echo "=================================="