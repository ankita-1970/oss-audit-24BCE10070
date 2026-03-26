#!/bin/bash
# -----------------------------------------
# Script 5: Open Source Manifesto Generator
# Description: Takes user input and creates a text file
# -----------------------------------------

echo "Answer the following questions:"
echo ""

# Take user inputs
read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

# Get current date
DATE=$(date '+%d %B %Y')

# Output file name
OUTPUT="manifesto_$(whoami).txt"

# Write content to file
echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe open source is about $FREEDOM." >> $OUTPUT
echo "I regularly use $TOOL in my work." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely." >> $OUTPUT

# Display confirmation
echo ""
echo "Manifesto saved in $OUTPUT"

# Show file content
cat $OUTPUT
