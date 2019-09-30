#!/usr/bin/bash

TITLE=`mpc --format="%title%" | head -1`
ARTIST=`mpc --format="%artist%" | head -1`
ALBUM=`mpc --format="%album%" | head -1`

if [ -z "$TITLE" ]; then
  TITLE="?"
fi

if [ -z "$ALBUM" ]; then
  ALBUM="?"
fi

if [ -z "$ARTIST" ]; then
  ARTIST="?"
fi

notify-send -t 3000 -i audio-x-generic "$TITLE" "$ARTIST\n$ALBUM"
