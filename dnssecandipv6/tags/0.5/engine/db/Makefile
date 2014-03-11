# $Id: Makefile 78 2007-11-28 15:43:07Z jakob $

all:

clean:
	rm -f messages.sql

messages.sql:
	find .. -name '*.pm' -type f | xargs cat |\
	perl ../util/filter-messages.pl | sort -u > $@
