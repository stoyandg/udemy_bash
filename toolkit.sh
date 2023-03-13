#!/bin/bash

# Author: Stoyan Georgiev
# Date: 13/03/2023
# Last modified: 13/03/2023

# Description
# Provides the user with a menu to choose which of the two other scripts to execute.

# Usage
# ./toolkit.sh

echo "Select which script to execute?"

select script in cruft-remover folder-organiser quit; 
do
	case "$script" in
		cruft-remover)
			echo "Executing Cruft Remover script"
			./cruft_remover.sh;;
		folder-organiser)
			echo "Executing Folder Organiser script"
			./folder_organiser.sh ;;
		quit)
			echo "Finished!"
			break;;
	esac
	break
done

exit 0
