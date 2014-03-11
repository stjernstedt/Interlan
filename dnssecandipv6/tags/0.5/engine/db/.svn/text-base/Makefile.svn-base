# $Id$

all:

clean:
	rm -f messages.sql

messages.sql:
	find .. -name '*.pm' -type f | xargs cat |\
	perl ../util/filter-messages.pl | sort -u > $@
