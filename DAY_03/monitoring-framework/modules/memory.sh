#!/bin/bash

MEMORY=$(free | awk '/Mem:/ {print int($3/$2 * 100)}')

echo "$MEMORY"