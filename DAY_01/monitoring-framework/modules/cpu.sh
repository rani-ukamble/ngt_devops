#!/bin/bash

get_cpu_usage() {

    cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | cut -d. -f1)

    cpu_usage=$((100 - cpu_idle))

    echo $cpu_usage
}