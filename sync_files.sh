#!/bin/bash
#This is just so I dont have to manually copy files every time I make changes
if [ ~/Documents/Insight\ Solutions/P\&P/ -nt ./user_manual_source ]; then
	echo "Local manual files are ahead of git repo"
	cp -r ~/Documents/Insight\ Solutions/P\&P/* .
	echo "Copied files"
else
	echo "Local manual files are in sync with or older than git repo"
	echo "Nothing was updated"
fi
