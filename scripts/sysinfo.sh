#!/bin/bash
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOGFILE=~/ds1202-project/logs/sysinfo_$TIMESTAMP.log
{
echo "========================================"
echo "       SYSTEM INFORMATION REPORT        "
echo "========================================"
echo "Generated on: $(date)"
echo "Hostname:   $(hostname)"
echo "OS/Kernel:  $(uname -srm)"
echo "Uptime: $(uptime -p)"
echo "CPU Load: $(uptime | awk -F'load average:' '{ print $2 }')"
echo "----------------------------------------"
echo "Memory Usage:"
free -h
echo "----------------------------------------"
echo "Disk Usage:"
df -h
echo "========================================"
} | tee "$LOGFILE"
