# Day 3

This project is a production-style system monitoring framework written in Shell Script that monitors:

CPU Usage
Memory Usage
Disk Usage
Network Status
Service Status
Threshold-based Alerts
Logging
JSON Reporting
Log Rotation
Cron Automation





monitoring-framework/
│
├── main.sh
├── config.sh
├── logger.sh
├── report.sh              <-- NEW
├── rotate_logs.sh         <-- NEW
│
├── modules/
│   ├── cpu.sh
│   ├── memory.sh
│   ├── disk.sh
│   ├── network.sh
│   ├── service.sh
│   └── alerts.sh
│
├── logs/
│   └── monitoring.log
│
└── reports/
    └── report.json


# Workflow

Cron
 │
 ▼
main.sh
 │
 ├─ cpu.sh
 ├─ memory.sh
 ├─ disk.sh
 ├─ network.sh
 ├─ service.sh
 ├─ alerts.sh
 │
 ▼
logger.sh
 │
 ▼
logs/monitoring.log
 │
 ▼
report.sh
 │
 ▼
reports/report.json

Hourly
 │
 ▼
rotate_logs.sh
 │
 ▼
Archived Logs




# network.sh

Monitors network traffic.
Identifies active interface.
Captures RX and TX bytes.

# service.sh

Validates critical service availability.
Detects stopped services.

# alerts.sh

Compares metrics against thresholds.
Generates alerts for abnormal conditions.

# main.sh

Collects metrics from all modules.
Triggers alert evaluation.
Logs and displays results.

# report.sh

Collect all monitoring metrics
Create structured JSON output
Store report in reports/report.json