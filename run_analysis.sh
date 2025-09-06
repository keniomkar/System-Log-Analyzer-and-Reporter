#!/usr/bin/bash

# run_analysis.sh
# Automates the full workflow: Bash log collection + Python report generation

#running the log_collector.sh
./log_collector.sh

#running log_report.py
python log_report.py

#END OF SCRIPT