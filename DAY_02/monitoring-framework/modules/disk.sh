#!/bin/bash

get_disk_usage() {

    disk_usage=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')

    echo $disk_usage
}