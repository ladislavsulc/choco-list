#!/bin/bash  

echo "Listing all Chocolatey packages and importing to README.md"

# List all Chocolatey packages and import them and format the into README.md
choco list -lo | awk '{print "- "$0}' > README.md

echo "Prepending the Title"

# Prepend the H1 repo name
sed -i '1i # My Favourite Chocolatey packages\n' README.md

sleep 1s # Waits 1 second.

echo "All done!"

sleep 1s # Waits 1 second.
