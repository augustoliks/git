#!/bin/bash

# Description: Clone all repositories on github by Username

USERNAME=$1

LIST_PROJECTS_URL=`curl --silent https://api.github.com/users/${USERNAME}/repos -q | grep "\"clone_url\"" | awk -F': "' '{print $2}' | sed -e 's/",//g'`

for URL in $LIST_PROJECTS_URL; do
	echo ">>> cloning: $URL"
	    git clone $URL
	done
