#!/bin/bash

sytem_uptime=$(uptime)
cpu_usage=$(top -bn1| grep "Cpu")
memory_usage=$(free -h)
disk_usage=$(df -h)
running_process=$(ps -eo pid,comm,%cpu,%mem --sort=%cpu | head -6)

LOG_FILE="logs/monitor.log"

if [[ ! -d $LOG_FILE ]]; then
    mkdir logs
    touch logs/monitor.log
fi

echo "System Monitoring Log - $(date)" > $LOG_FILE
echo "===========System Uptime=============" >> $LOG_FILE
echo "$sytem_uptime" >> $LOG_FILE

echo "===========Cpu Usage=============" >> $LOG_FILE
echo "$cpu_usage"  >> $LOG_FILE

echo "===========Memory Usage=============" >> $LOG_FILE
echo "$memory_usage" >> $LOG_FILE

echo "===========Disk Usage=============" >> $LOG_FILE
echo "$disk_usage" >> $LOG_FILE

echo "===========Top 5 running process=============" >> $LOG_FILE
echo "$running_process" >> $LOG_FILE
