#!/bin/bash

# shows count of all visited urls in log
awk '{count[$7]++} END {for (url in count) print url, count[url]}' apache_logs