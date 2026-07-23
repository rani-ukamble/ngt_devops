#!/bin/bash

source config.sh
source logger.sh

CPU=$(bash modules/cpu.sh)
MEM=$(bash modules/memory.sh)
DISK=$(bash modules/disk.sh)
NETWORK=$(bash modules/network.sh)
SERVICE=$(bash modules/service.sh)

log_message "CPU Usage : $CPU%"
log_message "Memory Usage : $MEM%"
log_message "Disk Usage : $DISK%"
log_message "Network Status : $NETWORK"
log_message "Service Status : $SERVICE"

bash modules/alerts.sh

bash report.sh