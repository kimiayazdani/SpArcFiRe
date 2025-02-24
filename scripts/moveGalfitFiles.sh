#!/bin/bash

# Matt - 1/15/21
# Changing the script's utility to instead delete all galfit junk
# Ignore below description

#This is meant to clean up galfit files created when using the generateFitQuality option.
#Galfit will output a series of files, called galfit.01, galfit.02, ... etc
#This script simply moves the file to the corresponding galaxy directory

# TODO: Check if the generateFitQuality variable has been set so that this is safer

#INDIR=$1 #original directory that the script was called from
#BASEOUTDIR=$2 #directory where all of SpArcFiRe's output directories are
# Dropping in some code for making a temp directory for future reference
# TMPDIR=`mktemp -d /tmp/galfit_junk.XXXXXX`
GJUNK="/tmp/galfit_junk"

#echo "Moving Galfit Files"
echo "Deleting GALFIT Files matching $GJUNK..."
#find /tmp/ -type d -name "$GJUNK*" 2>/dev/null

trap "/bin/rm -rf $GJUNK*" 0 1 2 3 15
#mkdir $GJUNK

#for file in $(find "$INDIR" -iregex '.*/galfit\.[0-9]+')
#do
#    echo "moving file $file"
#    secondLine=$(sed '2q;d' $file)
#    out=$(echo "$secondLine" | cut -c 1-20 --complement )
#    outdir=$(echo "$out" | rev | cut -d '/' -f2- | rev)
#    if [[ -d "$outdir" ]]
#    then
#        outpath=$(echo "$out" | rev | cut -c 1-7 --complement | rev)
#        outpath="$outpath-galfit_control_params"
#        mv $file $outpath
#    fi
#done

#mv "$INDIR/fit.log" "$BASEOUTDIR/galfit_fit.log"
