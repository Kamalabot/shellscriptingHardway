#!/usr/bin/env bash

who | sort | awk '{printf("%-15s%s %2s %s\n", $1, $3, $4, $5)}'
cat /etc/passwd| sort | awk '{print $1 $5 $6}'
