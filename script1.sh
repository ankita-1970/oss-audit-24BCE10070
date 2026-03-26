#!/bin/bash
# -----------------------------------------
# Script 1: System Identity Report
# Author: Ankita Pal
# Description: Displays basic system details
# -----------------------------------------

# Store student and software details
STUDENT_NAME="Ankita Pal"
SOFTWARE_CHOICE="Python"

# Get system information using commands
KERNEL=$(uname -r)              # Kernel version
USER_NAME=$(whoami)             # Current logged-in user
UPTIME=$(uptime -p)             # System uptime (pretty format)
DATE=$(date)                    # Current date and time

# Get Linux distribution name
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2)

# Display output in a formatted way
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo "Distro          : $DISTRO"
echo "License         : GNU GPL (Linux OS)"
