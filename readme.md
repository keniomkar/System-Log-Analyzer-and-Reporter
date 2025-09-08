# System-Log-Analyzer-Reporter
System Log Analyser and Reporter – Built with Bash and Python to automate log monitoring. Extracts ERROR/WARNING entries, summarises occurrences, and generates reports. Demonstrates scripting, automation, and cross-platform development skills.

## Project Structure
System-Log-Analyzer/
│── **system_logs.tx**t # Sample system log file (input)  
│── **log_collector.sh** # Bash script to filter logs  
│── **log_report.py** # Python script to generate summary  
│── **run_analysis.sh** # Automation script (runs both steps)  
│── **filtered_logs.txt** # Filtered log output (generated)  
│── **log_report.txt** # Summary report (generated)  

---

## How It Works
1. **Log Collection (Bash)**  
   - `log_collector.sh` scans `system_logs.txt`  
   - Filters out lines containing `ERROR` or `WARNING`  
   - Saves results in `filtered_logs.txt`

2. **Log Reporting (Python)**  
   - `log_report.py` reads the filtered logs  
   - Counts occurrences of each error/warning  
   - Creates a summary report in `log_report.txt`

3. **Automation**  
   - `run_analysis.sh` runs both steps with one command  

---

## Skills Demonstrated
- Bash scripting: text filtering, file handling, automation
- Python scripting: file parsing, reporting, data processing
- Cross-platform scripting (Windows Git Bash + Linux/Mac)
- System monitoring & log analysis

---

## Future Enhancements
- Email notifications for critical errors
- Visualisation (graphs of ERROR vs WARNING)
- Automated daily scheduling

---



