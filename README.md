# Linux Process Monitoring and Incident Response System

## Project Overview

The Linux Process Monitoring and Incident Response System is a Linux administration project designed to simulate real-world server monitoring and troubleshooting activities. The project focuses on process management, system health monitoring, incident detection, and response using standard Linux administration tools and Bash scripting.

This project demonstrates the practical skills required by Linux System Administrators to investigate performance issues, identify resource-intensive processes, generate system health reports, and respond to process-related incidents.

## Objectives

* Monitor running processes on a Linux system.
* Identify CPU and memory-intensive processes.
* Generate automated process health reports.
* Detect zombie processes.
* Simulate incident response procedures.
* Terminate unauthorized or unnecessary processes.
* Practice Linux troubleshooting techniques.

## Technologies Used

* Red Hat Enterprise Linux / CentOS / Rocky Linux
* Bash Scripting
* Process Management Utilities
* Linux Command Line

## Linux Commands Used

| Command | Purpose                                |
| ------- | -------------------------------------- |
| ps      | Display running processes              |
| top     | Monitor system activity in real time   |
| kill    | Terminate a process using PID          |
| pkill   | Terminate processes using process name |
| grep    | Search process information             |
| awk     | Process and filter command output      |
| wc      | Count running processes                |
| chmod   | Modify file permissions                |

## Project Structure

linux-process-monitoring-incident-response/
│
├── process_monitor.sh
├── reports/
│   └── process_report.txt
├── screenshots/
│   ├── top-output.png
│   ├── process-list.png
│   ├── script-execution.png
│   └── incident-response.png
├── incident_report.md
└── README.md

## Features

### Process Monitoring

* View active processes.
* Monitor system resource consumption.
* Display top CPU-consuming processes.
* Display top memory-consuming processes.

### System Health Reporting

* Generate process reports automatically.
* Record system process statistics.
* Count active processes.
* Detect zombie processes.

### Incident Response

* Investigate suspicious processes.
* Identify unwanted background jobs.
* Terminate problematic processes.
* Verify successful remediation.

## Project Workflow

### Step 1: Process Monitoring

Monitor system processes using:

ps aux
top

### Step 2: Incident Simulation

Create multiple background processes:

sleep 500 &
sleep 500 &
sleep 500 &

### Step 3: Investigation

Identify running processes:

ps aux | grep sleep

### Step 4: Incident Response

Terminate individual processes:

kill PID

Terminate all matching processes:

pkill sleep

### Step 5: Verification

Confirm successful process termination:

ps aux | grep sleep

## Sample Report Output

PROCESS HEALTH REPORT
Generated: Tue Jun 02 10:00:00 IST

TOP 5 CPU CONSUMING PROCESSES

TOP 5 MEMORY CONSUMING PROCESSES

TOTAL RUNNING PROCESSES

ZOMBIE PROCESSES

## Learning Outcomes

Through this project, I gained hands-on experience with:

* Linux process management
* System performance monitoring
* Process troubleshooting
* Incident response procedures
* Bash scripting
* System administration best practices

## Future Improvements

* Email alert notifications
* Automatic process threshold monitoring
* Log file integration
* Scheduled monitoring using cron jobs
* Dashboard-based reporting

## Author

Nandana Mohan J

Linux System Administration Learning Project

