#!/bin/bash
# -----------------------------------------
# Script 4: Log File Analyzer
# Description: Counts keyword occurrences in log file
# Usage: ./script4.sh <logfile> <keyword>
# -----------------------------------------

# Take input from user
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is "error"
COUNT=0                 # Counter variable

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found"
    exit 1
fi

# Read file line by line
while IFS= read -r LINE; do

    # Check if line contains keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increase counter
    fi

done < "$LOGFILE"

# Display result
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
