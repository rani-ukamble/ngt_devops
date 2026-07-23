#!/bin/bash

ping -c 1 google.com > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "UP"
else
    echo "DOWN"
fi