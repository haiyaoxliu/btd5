#!/bin/bash

cd "${0%/*}/../modding"
DEST=~/"Library/Application Support/Steam/steamapps/common/BloonsTD5/btd5steam.app/Contents/Resources/Assets/BTD5.jet"

if [ ! -f BTD5.jet ]; then
	now=$(date +"%T")
	echo "[$now] btd5.jet not found" >> ../tools/log
	exit 1

fi

read -p "install mod? (y/n): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
	now=$(date +"%T")
	echo  "[$now] copying $PWD/BTD5.jet" >> ../tools/log
	cp -f BTD5.jet ~/"Library/Application Support/Steam/steamapps/common/BloonsTD5/btd5steam.app/Contents/Resources/Assets"
	now=$(date +"%T")
	echo  "[$now] copied to $DEST" >> ../tools/log
	exit 1
fi
	now=$(date +"%T")
	echo "[$now] user aborted" >> ../tools/log
	exit 1