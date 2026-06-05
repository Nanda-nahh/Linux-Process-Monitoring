#!/bin/bash
REPORT="reports/process_report.txt"
mkdir -p reports
echo " " > "$REPORT"
echo "PROCESS HEALTH REPORT" >> "$REPORT" 
echo "Generated: $(date)" >> "$REPORT"
echo " " >> "$REPORT"

echo "TOP 5 CPU CONSUMING PROCESSES" >> "$REPORT"
ps aux --sort=-%cpu | head -6 >> "$REPORT"
echo " " >> "$REPORT"

echo "TOP 5 MEMORY CONSUMING PROCESSES" >> "$REPORT"
ps aux --sort=-%mem | head -6 >> "$REPORT"
echo " " >> "$REPORT"

echo "TOTAL PROCESSES COUNT" >> "$REPORT"
ps -e --no-headers | wc -l >> "$REPORT"
echo " " >> "$REPORT"

echo "ZOMBIE PROCESS DETECION" >> "$REPORT"
ps aux | awk '$8 ~ /Z/' >> "$REPORT"
echo " " >> "$REPORT"

echo "Report generated successfully." >> "$REPORT"        
