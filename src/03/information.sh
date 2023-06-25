#! /bin/bash

B1=$1; T1=$2; B2=$3; T2=$4;
D="\033[0m"

echo "${B1}${T1}HOSTNAME${D}" = "${B2}${T2}`hostname`${D}"
echo "${B1}${T1}TIMEZONE${D}" = "${B2}${T2}$(cat /etc/timezone) UTC $(date +"%Z")${D}"
echo "${B1}${T1}USER${D}" = "${B2}${T2}`whoami`${D}"
echo "${B1}${T1}OS${D}" = "${B2}${T2}$(uname -s) $(cat /etc/issue | awk '{printf("%s %s", $1, $2)}')${D}"
echo "${B1}${T1}DATE${D}" = "${B2}${T2}$(date +"%d %B %Y %T")${D}"
echo "${B1}${T1}UPTIME${D}" = "${B2}${T2}`uptime -p`${D}"
echo "${B1}${T1}UPTIME_SEC${D}" = "${B2}${T2}$(cat /proc/uptime | awk '{print int($1) " sec"}')${D}"
echo "${B1}${T1}IP${D}" = "${B2}${T2}`hostname --all-ip-addresses`${D}"
echo "${B1}${T1}MASK${D}" = "${B2}${T2}$(ip -4 a | grep global | awk '{printf $4 " "}')${D}"
echo "${B1}${T1}GATEWAY${D}" = "${B2}${T2}$(ip route | grep default | awk '{print $3}')${D}"
echo "${B1}${T1}RAM_TOTAL${D}" = "${B2}${T2}$(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$2/1024)}')${D}"
echo "${B1}${T1}RAM_USED${D}" = "${B2}${T2}$(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$3/1024)}')${D}"
echo "${B1}${T1}RAM_FREE${D}" = "${B2}${T2}$(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$4/1024)}')${D}"
echo "${B1}${T1}SPACE_ROOT${D}" = "${B2}${T2}$(df /root/ | awk '/\/$/ {printf("%.2f MB", $2/1024)}')${D}"
echo "${B1}${T1}SPACE_ROOT_USED${D}" = "${B2}${T2}$(df /root/ | awk '/\/$/ {printf("%.2f MB", $3/1024)}')${D}"
echo "${B1}${T1}SPACE_ROOT_FREE${D}" = "${B2}${T2}$(df /root/ | awk '/\/$/ {printf("%.2f MB", $4/1024)}')${D}"
