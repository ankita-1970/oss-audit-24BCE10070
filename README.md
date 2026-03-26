# Open Source Software Audit Project

## Student Details
Name: Ankita Pal  
Roll Number: 24BCE10070  
Course: NGMC (Open Source Software)

## About the Project
This project is based on basic shell scripting in Linux.  
The aim was to understand how simple scripts can be used to collect system information, check software, analyze logs, and automate small tasks.

All scripts were written and tested on Ubuntu (VirtualBox).

## Software Chosen
Python

## Scripts Overview

### Script 1: System Identity Report
This script displays basic system information such as kernel version, username, uptime, date and Linux distribution.

### Script 2: Python Installation Check
This script checks whether Python is installed on the system and shows related installed packages.

### Script 3: Directory Audit
This script checks important system directories and displays their permissions and size. It also verifies if the Python directory exists.

### Script 4: Log File Analyzer
This script reads a system log file and counts how many times a keyword (like "error") appears. It also shows the last few matching lines.

### Script 5: Open Source Manifesto Generator
This script takes user input and creates a simple manifesto file based on the responses.

## How to Run the Scripts
./script1.sh
./script2.sh
./script3.sh
sudo ./script4.sh /var/log/syslog error
./script5.sh

Requirements
	•	Ubuntu / Linux system
	•	Bash shell
	•	Python installed

Conclusion:
This project helped me understand shell scripting in a practical way. While working on different scripts, I learned how to collect system information, check software details and analyze log files. It also improved my confidence in using Linux and writing basic scripts.

### Step 1: Give permission
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
