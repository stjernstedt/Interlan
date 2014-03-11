#!/bin/sh

/usr/bin/curl http://www.worldipv6day.org/participants/index.html > raw.html
cat raw.html | awk '/<div class="wp_isoc_content">/,/footer/' > subset.html
grep 'a href' subset.html | tr "'>'" "\n" > subset3.html
cat subset3.html |sed 's/^.*http/http/' | sed 's/. target.*$//' | egrep '^http://[^/]*$' | sed 's/[^a-z]$//' | sed 's/http:\/\///' > domains.txt
cat subset.html | awk '/Other participating organisations/,/<\/ul>/' > subset2.html
grep 'a href' subset2.html | sed 's/^.*https*:\/\/\([a-z0-9.]*\).*$/\1/' >> domains.txt
