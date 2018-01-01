#!/bin/bash

cd "${0%/*}"

read -p "remove temporary saves? (y/n): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
	cd ../modding
	rm *~
	echo '*~ removed'
	echo
	exit 1
fi
	echo 'aborting'
	echo
	exit 1