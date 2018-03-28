#!/bin/bash

# Make sure that the path to you mail is correct.
# Change your i3-config and change "i3status" to
# point to this script.

i3status | while :
do
  maildirs="$HOME/Mail/*/INBOX/new/"
  ml="$(find $maildirs -type f | wc -l)"
  read line
  echo "New mails: $ml | $line" || exit 1
done
