#!/bin/bash

# Author: Stoyan Georgiev
# Date: 13/03/2023
# Last modified: 13/03/2023

# Description
# Remove unused files or "cruft" from  a specific directory.

# Usage
# ./cruft_remover.sh and then answer the questions.

read -p "Which folder would you like to remove unused files from?" folder

read -p "Files older than how many days would you like to delete?" days

find $folder -maxdepth 1 -type f -mtime +$days > files-to-delete

readarray myarray < files-to-delete

for file in ${myarray[@]}; do
	echo "Would you like to delete $file"?
	rm -i $file
done

rm files-to-delete

exit 0
