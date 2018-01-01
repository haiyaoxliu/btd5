#!/bin/bash

cd "${0%/*}/../modding"

if [ ! -r Assets ]; then
	now=$(date +"%T")
	echo "[$now] assets not found" >> ../tools/log
	echo
	exit 1
fi

read -p "compress assets? (y/n): " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
	now=$(date +"%T")
	echo  "[$now] compressing $PWD" >> ../tools/log
	7z a -pQ%_{6#Px]] BTD5.jet Assets
	now=$(date +"%T")
	echo  "[$now] $PWD/BTD5.jet created" >> ../tools/log
	echo
	exit 1
fi
	now=$(date +"%T")
	echo "[$now] user aborted" >> ../tools/log
	echo
	exit 1