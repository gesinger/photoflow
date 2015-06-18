#!/usr/bin/env bash

year=`date +'%Y'`
exiftool -artist="Garrett Singer" -copyright="$year Garrett Singer" *.ORF
