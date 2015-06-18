#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "No directory supplied"
  exit 1
fi

EXT=ORF

# Add metadata - also creates original files

year=`date +'%Y'`
exiftool -artist="Garrett Singer" -copyright="$year Garrett Singer" $1/*.$EXT

# Rename files to YYYY_mm_dd_HH_MM_SS.ext

exiftool "-FileName<CreateDate" -d "%Y_%m_%d_%H_%M_%S.%%e" $1/*.$EXT
