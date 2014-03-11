#!/bin/sh
cd /home/it-companies/

for i in `cat domain` ; do
echo "<a href=www.$i>www.$i</a><br>"
done
