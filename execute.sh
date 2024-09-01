#!/bin/bash

choco list --id-only | sort | uniq > choco-packages.md

