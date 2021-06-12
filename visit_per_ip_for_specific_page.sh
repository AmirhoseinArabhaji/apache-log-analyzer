#!/bin/bash

# print visit per ip for a specific page
awk -F'[ "]+' '$7 == "/" { ipcount[$1]++ }
    END { for (i in ipcount) {
        printf "%15s - %d\n", i, ipcount[i]} }' apache_logs