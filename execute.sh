#!/bin/bash  

echo "Listing all Chocolatey packages, importing to README.md..."

# List all Chocolatey packages, import them and format them into README.md
choco list | awk '{print "- "$0}' > README.md

# List all Choco packages in one row without versions and write it in packages.md
choco list | sed 's/[0-9]//g' | sed 's/\.//g' > packages.md

echo "Prepending the repo title..."

# Prepending the repo name as H1
sed -i '1i # My Favourite Chocolatey packages\n' README.md

sleep 1s # Waits 1 second.

echo "All done!"

sleep 1s # Waits 1 second.
