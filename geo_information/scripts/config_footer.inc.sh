#! /bin/bash

#
# Postprocessing of configuration variables
#


#set full variables
  echo -e "\n*** setting full variables ***"
  GRIDFILE=$WORKINGDIR/$GRIDFILE
  DARTSTATIONSFILE=$WORKINGDIR/$DARTSTATIONSFILE
  WRITEDATATO="$WORKINGDIR/$WRITEDATATO"
  WRITETOASCII="$WORKINGDIR/$WRITETOASCII"
  TEMPDIR=$WORKINGDIR/$TEMPDIR
  PLOTDIR=$WORKINGDIR/$PLOTDIR
  DISPLSCRIPT=$WORKINGDIR/$DISPLSCRIPT
  DISPLCONFIG=$WORKINGDIR/$DISPLCONFIG
  DISPLSUBFAULTS=$WORKINGDIR/$DISPLSUBFAULTS
  DISPLREFORMATSCRIPT=$WORKINGDIR/$DISPLREFORMATSCRIPT


  test -e $GRIDFILE || { echo "  $GRIDFILE not found"; exit 1; }


  echo "Creating plots, tmp and output directories"
  # create dirs
  mkdir -p "$PLOTDIR"
  mkdir -p "$TEMPDIR"
  mkdir -p "$WRITEDATATO"
