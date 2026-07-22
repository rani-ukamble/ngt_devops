#!/bin/bash

check_service() {

    service_name=$1

    if systemctl is-active --quiet "$service_name"
    then
        echo "RUNNING"
    else
        echo "STOPPED"
    fi
}