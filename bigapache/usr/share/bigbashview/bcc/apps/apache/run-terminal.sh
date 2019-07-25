#!/bin/bash

xtermset -geom 90x15+70+110

OLDIFS=$IFS
IFS=$'\n'

youtube-dl  -o '$HOME/%(title)s.%(ext)s' $1
