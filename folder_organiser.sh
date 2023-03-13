#!/bin/bash

# Author: Stoyan Georgiev
# Date: 13/03/2023
# Last modified: 13/03/2023

# Description
# Sorts files in a folder in subfolders based on their file type.

# Usage
# ./folder_organiser.sh and then answer the question.

read -p "Type in the path of the folder which you want to sort" folder

while read line; do
	if [[ $line == *.png ]] || [[ $line == *.jpeg ]] || [[ $line == *.png ]]; then
		echo "$line is an image."
		if  [ -d $folder/images ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/images
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $folder/images
			mv $folder/$line $folder/images
		fi 
	elif [[ $line == *.doc ]] || [[ $line == *.docx ]] || [[ $line == *.txt ]] || [[ $line == *.pdf ]]; then
		echo "$line is a document."
		if [ -d $folder/documents ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/documents
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $folder/documents
			mv $folder/$line $folder/documents
		fi
	elif [[ $line == *.xls ]] || [[ $line == *.xlsx ]] || [[ $line == *.csv ]]; then
		echo "$line is a spreadsheet."
		if [ -d $folder/spreadsheets ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/spreadsheets
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $folder/spreadsheets
			mv $folder/$line $folder/spreadsheets
		fi
	elif [[ $line == *.sh ]]; then
		echo "$line is a script."
		if [ -d $folder/scripts ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/scripts
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $folder/scripts
			mv $folder/$line $folder/scripts
		fi
	elif [[ $line == *.zip ]] || [[ $line == *.tar ]] || [[ $line == *.tar.gz ]] || [[ $line == *.tar.bz2 ]]; then
		echo "$line is an archive."
		if [ -d $folder.archives ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/archives
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $folder/archives
			mv $folder/$line $folder/archives
		fi
	elif [[ $line == *.ppt ]] || [[ $line == *.pptx ]]; then
		echo "$line is a presentation"
		if [ -d $folder/presentations ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/presentations
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $line $folder/presentations
			mv $folder/$line $folder/presentations
		fi
	elif [[ $line == *.mp3 ]]; then
		echo "$line is an audio file."
		if [ -d $folder/audio ]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/audio
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $line $folder/audio
			mv $folder/$line $folder/audio
		fi
	elif [[ $line == *.mp4 ]]; then
		echo "$line is a video file."
		if [ -d $folder/video]; then
			echo "Directory exists, moving file to it."
			mv $folder/$line $folder/video
		else
			echo "Directory doesn't exist, creating directory and then moving the file to it."
			mkdir $line $folder/video
			mv $folder/$line $folder/video
		fi
	else
		echo "$line stays in current folder."
	fi
done < <(ls $folder)

exit 0
