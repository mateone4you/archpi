#!/bin/sh
test -f /sys/class/thermal/thermal_zone0/temp || return 0
echo $(head -c 2 /sys/class/thermal/thermal_zone0/temp)C
