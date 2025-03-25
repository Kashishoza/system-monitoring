#!/bin/bash

system_uptime=$(uptime)
cpu_usage=$(top -bn1| grep "Cpu")
memory_usage=$(free -h)
disk_usage=$(df -h)
running_process=$(ps -eo pid,comm,%cpu,%mem --sort=%cpu | head -6)

LOG_FILE="logs/monitor.log"

if [[ ! -d  ]]; then
    mkdir logs
fi

# create a log file
{
echo "System Monitoring Log - $(date)" > 
echo "===========System Uptime=============" >> 
echo "$sytem_uptime" >> 

echo "===========Cpu Usage=============" >> 
echo "$cpu_usage"  >> 

echo "===========Memory Usage=============" >> 
echo "$memory_usage" >> 

echo "===========Disk Usage=============" >> 
echo "$disk_usage" >> 

echo "===========Top 5 running process=============" >> 
echo "$running_process" >>
echo "" 
} >> $LOG_FILE