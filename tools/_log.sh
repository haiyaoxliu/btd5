#!/bin/bash

LOG=~/Github/btd5/tools/log

if [ ! -f $LOG ]; then
    echo "[$now] ABORT: no log"
    exit 1
else
    for MSG in "$@"
    do
	now=$(date +"%T")
	echo  "[$now] $MSG" >> $LOG
    done
fi

exit 1
