#!/bin/bash

get_memory_usage() {

    memory_usage=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

    echo $memory_usage
}