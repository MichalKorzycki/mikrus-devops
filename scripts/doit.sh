#!/bin/bash

TODAY=`date -I`
FNAME=~/$HOSTNAME.LOG
touch $FNAME

if ! grep --quiet "^#$TODAY" $FNAME; then
        echo >> $FNAME
        echo "#"$TODAY >> $FNAME
fi
eval "$@"
echo "$@" >> $FNAME

