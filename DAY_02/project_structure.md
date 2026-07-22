For Day 1, your goal is not to build a full monitoring product yet. 
# Day 2 enhances the monitoring framework by adding network monitoring, service health validation, and an alert engine. The framework no longer only collects metrics but also evaluates them against configured thresholds and generates alerts for abnormal conditions such as high CPU usage, memory pressure, disk exhaustion, service downtime, and unusual network activity. This transforms the solution from a passive monitoring tool into a proactive observability platform.


monitoring-framework/
│
├── main.sh
├── config.sh
├── logger.sh
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