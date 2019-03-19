#!/bin/bash

if [ -f /Library/McAfee/agent/scripts/uninstall.sh ]; then
	sudo sh /Library/McAfee/agent/scripts/uninstall.sh 
elif [ -f /Library/McAfee/cma/uninstall.sh ]; then
	sudo sh /Library/McAfee/cma/uninstall.sh
else 
	sudo rm -rf /Applications/*McAfee* /Library/*/*fee* /Quarantine /Library/McAfee
fi

clear

echo " Will be restarting your computer in a moment"

sleep 2

sudo shutdown -r now