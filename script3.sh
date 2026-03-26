#!/bin/bash
# -----------------------------------------
# Script 3: Disk and Permission Auditor
# Description: Shows size and permissions of directories
# -----------------------------------------

# List of important directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions, owner and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get size of directory
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        # Display result
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist"
    fi
done

# Check if Python directory exists
echo ""
echo "Checking Python directory..."

if [ -d "/usr/lib/python3" ]; then
    echo "Python directory exists"
    ls -ld /usr/lib/python3
else
    echo "Python directory not found"
fi
