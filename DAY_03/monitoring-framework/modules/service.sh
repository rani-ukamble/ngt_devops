#!/bin/bash

source config.sh

STATUS=$(systemctl is-active $SERVICE_NAME)

echo "$STATUS"