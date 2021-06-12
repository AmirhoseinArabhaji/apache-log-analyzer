#!/bin/bash

# shows count of specific visited url in log 
awk '{count[$7]++} END {for (url in count) if (url == "/") print url, count[word]}' apache_logs