# $Id: Makefile 81 2007-11-30 09:34:44Z jakob $

all:

tmp.txt:
	find .. -name '*.pm' -type f | xargs cat |\
	perl ../util/perl2messages.pl  > $@
	
tmp.yaml: tmp.txt
	perl ../util/messages2yaml.pl $< >$@
