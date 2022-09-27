#!/bin/bash

SINK=$(LC_ALL=C pactl get-default-sink)
#SINK=$(LC_ALL=C pactl list sinks short | grep 'RUNNING' | awk '{ print $2 }')

case $1 in

  "volume")
    echo $(LC_ALL=C pactl get-sink-volume $SINK | awk '{print $5}')
  ;;

  "mute")
    echo $(LC_ALL=C pactl get-sink-mute $SINK)
  ;;

  "set_sink")
    $(LC_ALL=C pactl set-default-sink $2)
  ;;

  "increase")
    pactl set-sink-volume $SINK +2%
  ;;

  "decrease")
    pactl set-sink-volume $SINK -2%
  ;;

  "mute")
    pactl set-sink-mute $SINK toggle
  ;;
esac
