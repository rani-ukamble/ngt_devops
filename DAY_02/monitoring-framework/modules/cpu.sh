#!/bin/bash

get_cpu_usage() {

    cpu_usage=$(top -bn1 | awk '/Cpu\(s\)/ {print int(100 - $8)}')

    echo "$cpu_usage"
}