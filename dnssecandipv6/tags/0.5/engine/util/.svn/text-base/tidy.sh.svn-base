#!/bin/sh
#
# $Id$

TIDYRC=util/perltidyrc

find . \( -name '*.pl' -o -name '*.pm' \) -type f -print |\
xargs perltidy --profile=${TIDYRC} --backup-and-modify-in-place
find . \( -name '*.pl.bak' -o -name '*.pm.bak' \) -type f -print |\
xargs rm
