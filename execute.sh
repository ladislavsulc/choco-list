#!/bin/bash

choco list | awk '{print $1}' | sort | uniq > temp.txt

grep -f temp.txt packages.md > packages_temp.md

mv packages_temp.md packages.md

