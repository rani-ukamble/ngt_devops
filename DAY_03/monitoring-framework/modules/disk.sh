#!/bin/bash

DISK=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')

echo "$DISK"