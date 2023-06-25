#! /bin/bash

function output {
echo "HOSTNAME = `hostname`"
echo "TIMEZONE = $(cat /etc/timezone) UTC $(date +"%Z")"
echo "USER = `whoami`"
echo "OS = $(uname -s) $(cat /etc/issue | awk '{printf("%s %s", $1, $2)}')"
echo "DATE = $(date +"%d %B %Y %T")"
echo "UPTIME = `uptime -p`"
echo "UPTIME_SEC = $(cat /proc/uptime | awk '{print int($1) " sec"}')"
echo "IP = `hostname --all-ip-addresses`"
echo "MASK = $(ip -4 a | grep global | awk '{print $4}')"
echo "GATEWAY = $(ip route | grep default | awk '{print $3}')"
echo "RAM_TOTAL = $(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$2/1024)}')"
echo "RAM_USED = $(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n", $3/1024)}')"
echo "RAM_FREE = $(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n", $4/1024)}')"
echo "SPACE_ROOT = $(df /root/ | awk '/\/$/ {printf("%.2f MB", $2/1024)}')"
echo "SPACE_ROOT_USED = $(df /root/ | awk '/\/$/ {printf("%.2f MB", $3/1024)}')"
echo "SPACE_ROOT_FREE" = "$(df /root/ | awk '/\/$/ {printf("%.2f MB", $4/1024)}')"
}
