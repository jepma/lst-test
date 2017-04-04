#!/bin/bash
COUNTER=0
while [  $COUNTER -lt 100000 ]; do

  # Default settings
  SETTINGS="-c 50 -r 2500"

  # Alter settings is we have an even COUNTER value
  [ $((COUNTER%2)) -eq 0 ] && SETTINGS="-c 100 -r 5000"

  # RUN LST
  docker run --net=host --rm weaveworksdemos/load-test -d 5 -h $LSTHOST $SETTINGS

  # Update counter
  let COUNTER=COUNTER+1
done
