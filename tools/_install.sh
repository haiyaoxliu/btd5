#!/bin/bash

# defaults

# testing
DSTT=~/"Desktop/test"

# install source and destination
SRC=~/"Github/btd5/src"
DST=~/"Library/Application Support/Steam/steamapps/common/BloonsTD5/btd5steam.app/Contents/Resources/Assets"

# files to install
FILES="BTD5.jet
Loc/English.xml
Textures/Ultra/InGame.png
Textures/Ultra/InGame.xml"

_log.sh "---------------------------------------" "DIRECT INSTALL" "SOURCE: $SRC" "DESTINATION: $DST"

cd "$SRC"

if [ -d Assets ]
then
    _log.sh "COMPRESSING" "$PWD/Assets"
    7z a -pQ%_{6#Px]] BTD5.jet Assets
fi

for FILE in $FILES
do
    if [ ! -f "$FILE" ]
    then
	_log.sh "MISSING:  $FILE"
    else
	_log.sh "INSTALLING:  $FILE" "TO: $DST/$FILE"
	cp -f "$FILE" "$DST/$FILE"
    fi

done
_log.sh "INSTALL FINISHED"

exit 1
