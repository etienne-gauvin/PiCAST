#!/usr/bin/env bash

pid=$(ps -A -o pid,cmd | grep -m 1 play-yt-stream| cut -d'/' -f 1)
kill ${pid}


# This should be a child process and killed by the prev. command, incase it wasnt
pid=$(ps -A -o pid,cmd | grep -m 1 livestreamer| cut -d'/' -f 1)
kill ${pid}