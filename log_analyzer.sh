#!/bin/bash

TS=$(date +"%Y-%m-%d_%H-%M-%S")
OUT="log_report_$TS.txt"

echo "===== LOG ANALYZER REPORT =====" | tee $OUT
echo "Generated at: $TS" | tee -a $OUT
echo "" | tee -a $OUT

echo "===== FAILED LOGIN ATTEMPTS =====" | tee -a $OUT
sudo grep "Failed password" /var/log/auth.log | grep sshd | tee -a $OUT
echo "" | tee -a $OUT

echo "===== TOP SUSPICIOUS IPs =====" | tee -a $OUT
sudo grep "Failed password" /var/log/auth.log | grep sshd | awk '{print $11}' | sort | uniq -c | sort -nr | tee -a $OUT
echo "" | tee -a $OUT

echo "===== INVALID USERS =====" | tee -a $OUT
sudo grep "Invalid user" /var/log/auth.log | grep sshd | tee -a $OUT
