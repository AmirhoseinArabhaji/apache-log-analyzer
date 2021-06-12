#!/bin/bash

# last column is the browser column so we count them
awk '{count[$13]++} END {for (os in count) print os, count[os]}' apache_logs