#!/bin/bash

# List all installed Chocolatey packages
choco list -l -r | awk '$1 ~ /^[a-zA-Z]/ {print $1}' | sort | uniq -d > temp.txt

# Read the duplicate packages and keep the original name
while IFS= read -r pkg
do
  echo -n "$pkg "
done < temp.txt > packages_temp.md

# Remove duplicate packages
cat packages_temp.md packages.md | tr '\n' ' ' | sed 's/ *$//' > packages.md

rm temp.txt packages_temp.md

