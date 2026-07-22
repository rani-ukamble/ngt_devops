#!/bin/bash

CPU_THRESHOLD=80
MEMORY_THRESHOLD=85
DISK_THRESHOLD=90

LOG_FILE="./logs/monitoring.log"

SERVICES=("ssh" "nginx")