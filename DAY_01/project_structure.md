For Day 1, your goal is not to build a full monitoring product yet. 
# The goal is to design the architecture, create the project structure, and implement the core monitoring modules (cpu.sh, memory.sh, disk.sh) along with centralized logging and configuration.

monitoring-framework/
│
├── main.sh
├── config.sh
├── logger.sh
│
├── modules/
│   ├── cpu.sh
│   ├── memory.sh
│   └── disk.sh
│
├── logs/
│   └── monitoring.log
│
└── reports/



# Architecture Flow

                    +-----------+
                    |  main.sh  |
                    +-----------+
                          |
        ------------------------------------
        |                |                |
        ▼                ▼                ▼
    cpu.sh          memory.sh         disk.sh
        |                |                |
        ------------------------------------
                          |
                          ▼
                    logger.sh
                          |
                          ▼
                   monitoring.log