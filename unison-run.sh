#!/bin/sh
export HOME=/root

if [ ! -f "$UNISON_VOLUME" ]
then
    ln -s /unison $UNISON_VOLUME
fi

cd $UNISON_VOLUME || exit
exec unison-$UNISON_VERSION -socket 5000 >>/var/log/unison.log 2>&1
