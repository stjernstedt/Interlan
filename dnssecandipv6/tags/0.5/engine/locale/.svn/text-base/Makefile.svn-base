# $Id$

all:

tmp.txt:
	find .. -name '*.pm' -type f | xargs cat |\
	perl ../util/perl2messages.pl  > $@
	
tmp.yaml: tmp.txt
	perl ../util/messages2yaml.pl $< >$@
