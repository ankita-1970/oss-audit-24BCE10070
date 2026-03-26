#!/bin/bash

# Script 2: File and Directory Operations

mkdir -p my_folder
cd my_folder

touch file1.txt file2.txt

echo "This is file 1" > file1.txt
echo "This is file 2" > file2.txt

echo "Contents of file1:"
cat file1.txt

echo "Contents of file2:"
cat file2.txt

echo "Files in directory:"
ls
