#!/bin/bash

SRC_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )

echo "Start init enviroment at $SRC_ROOT"

PYTHONDIR=$SRC_ROOT/3rd/anaconda
#export PYTHONHOME=$PYTHONDIR
export PATH=$PYTHONDIR:$PYTHONDIR/scripts:$PATH

echo PYTHONHOME is $(which python)
