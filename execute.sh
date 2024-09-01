#!/bin/bash

choco list | sort | uniq > choco-packages.md

