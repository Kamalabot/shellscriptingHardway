#!/usr/bin/env bash

#This script will introduce the CASE construct in place of if/elif/then/else construct.
#
read -p "Enter your favorite rock group name: " ROCK
echo "Your fav rock group name is $ROCK"

case $ROCK in
  Beatles|beatles|btls)
    no_albums=12
    last_album="let it be"
    ;;
  "Dire Straits"|DS|"dire straits")
    no_albums=5
    last_album="On Every Street"
    ;;
  ABBA|abba|Abba)
    no_albums=6
    last_album="Abba Gold"
    ;;
  *)
    echo Unknown Rock Group
    exit
esac

echo $ROCK made $no_albums albums. The last one was $last_album
