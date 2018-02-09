#!/bin/bash  

echo "Listing all Chocolatey packages, importing to README.md..."

# List all Chocolatey packages, import them and format them into README.md
choco list -li | awk '{print "- "$0}' > README.md

choco list -lo | sed 's/[0-9]//g' | sed 's/\.//g' > packages.md

echo "Prepending the repo title..."

# Prepending the repo name as H1
sed -i '1i # My Favourite Chocolatey packages\n' README.md

cat README.md

sleep 1s # Waits 1 second.

echo "All done!"

sleep 1s # Waits 1 second.
