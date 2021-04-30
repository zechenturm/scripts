#!/bin/bash
while [ true ]
do
        cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_cur_freq
        sleep 1
        tput cuu $(nproc)
done
