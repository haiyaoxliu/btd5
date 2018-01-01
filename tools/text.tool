#!/bin/bash

cd "${0%/*}/../modding"
if [ ! -f English.xml ]; then
	echo 'English.xml not found'
	echo
	exit 1

fi

read -p "install text? (y/n): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
	cp -f English.xml ~/"Library/Application Support/Steam/steamapps/common/BloonsTD5/btd5steam.app/Contents/Resources/Assets/Loc"
	echo 'installed'
	echo
	exit 1
fi
	echo 'aborting'
	echo
	exit 1