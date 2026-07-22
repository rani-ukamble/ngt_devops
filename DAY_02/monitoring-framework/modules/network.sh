#!/bin/bash

get_network_stats() {

    interface=$(ip route | grep default | awk '{print $5}')

    rx=$(cat /sys/class/net/$interface/statistics/rx_bytes)

    tx=$(cat /sys/class/net/$interface/statistics/tx_bytes)

    echo "Interface=$interface RX=$rx TX=$tx"
}