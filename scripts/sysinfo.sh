#!/bin/bash

echo "========================================"
echo "       SYSTEM INFORMATION REPORT        "
echo "========================================"
echo "Hostname:   $(hostname)"
echo "OS/Kernel:  $(uname -sr)"
echo "----------------------------------------"
echo "Memory Usage:"
free -h
echo "----------------------------------------"
echo "Disk Usage:"
df -h /
echo "========================================"
