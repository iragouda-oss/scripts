#!/bin/bash
echo "menu options"
echo "press 1 to create 2 files"
echo "press 2 to change the permission of a file"
echo "press 3 to search a pattern in a file"
echo "press 4 to find the files in current directory recursively"

echo "press the numbers from 1 to 4"
read choice

case $choice in
	1)
		echo "creating 2 files file1 & file2";
		touch file1 file2
		;;
	2)
		echo "enter the name of the file to change the permission';
		read file name;
		chmod 777 $filename
		;;
	3)
		echo "enter the pattern to search in a file";
		read pattern;
		read filename;
		greo -i "$pattern" $filename
		;;
	4) 
		echo "enter the path to list of files and folders from the path";
		read path;
		ls -l
		;;
esac
