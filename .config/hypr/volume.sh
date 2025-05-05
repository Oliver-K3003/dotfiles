#!/bin/bash

SINK=`pactl list sinks | grep -o 'Sink #.*' | cut -f2 -d# | cut -f2 -d\"`

if [ $1 == "up" ]; then
    pactl set-sink-volume $SINK +5%
fi

if [ $1 == "down" ]; then
    pactl set-sink-volume $SINK -5%
fi

if [ $1 == "mute-sink" ]; then
    pactl set-sink-mute $SINK toggle
fi

if [ $1 == "mute-src" ]; then
    pactl set-source-mute $SINK toggle
fi
