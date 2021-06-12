#!/bin/bash

# visit per ip 
awk -F'[ "]+' '{ ipcount[$1]++ }
    END { for (i in ipcount) {
        printf "%15s - %d\n", i, ipcount[i]} }' apache_logs