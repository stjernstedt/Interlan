#!/bin/sh
#
# $Id: tidy.sh 261 2008-04-07 08:34:33Z jakob $

TIDYRC=util/perltidyrc

find . \( -name '*.pl' -o -name '*.pm' \) -type f -print |\
xargs perltidy --profile=${TIDYRC} --backup-and-modify-in-place
find . \( -name '*.pl.bak' -o -name '*.pm.bak' \) -type f -print |\
xargs rm
