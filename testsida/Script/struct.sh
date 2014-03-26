#!/bin/bash
countries=("sverige" "norge" "danmark" "finland")

for i in "${countries[@]}"; do
	mkdir $i
	mkdir $i/results
	mkdir $i/history
	mkdir $i/results/kommun
	mkdir $i/history/kommun
	mkdir $i/results/myndigheter
	mkdir $i/history/myndigheter
	mkdir $i/results/landsting
	mkdir $i/history/landsting
done
