#!/bin/sh

baseDir=$HOME"/.config/feh"
wall1="$1"
wall2="$2"
screen1="screen1"
screen2="screen2"

change_Wall(){
	filename=$(basename -- "$2")
	extension="${filename##*.}"
	filename="${filename%.*}"
	cp $2 $baseDir"/"$1"."$extension
}

if [ ! -z $wall2 ]; then
	filename=$(basename -- "$wall1")
	extension1="${filename##*.}"
	filename=$(basename -- "$wall2")
	extension2="${filename##*.}"
	change_Wall $screen1 $wall1
	change_Wall $screen2 $wall2
	feh --bg-fill $baseDir"/"$screen1"."$extension1 $baseDir"/"$screen2"."$extension2
else
	change_Wall $screen1 $wall1
	feh --bg-fill $baseDir"/"$screen1"."$extension
fi

