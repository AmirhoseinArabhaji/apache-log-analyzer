#!/bin/bash

# shows count of specific visited url in log 
awk '{count[$(NF)]++} END {for (browser in count) print browser, count[browser]}' apache_logs