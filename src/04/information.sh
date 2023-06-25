#! /bin/bash

system=$(
if [[ ! $TEMP_B1 =~ ^[0-6]$ ]]; then B1="\033[40m"; fi
if [[ ! $TEMP_T1 =~ ^[0-6]$ ]]; then T1="\033[47m"; fi
if [[ ! $TEMP_B2 =~ ^[0-6]$ ]]; then B2="\033[41m"; fi
if [[ ! $TEMP_T2 =~ ^[0-6]$ ]]; then T2="\033[34m"; fi

echo -e "${B1}${T1}HOSTNAME${D} = ${B2}${T2}`hostname`${D}"
echo -e "${B1}${T1}TIMEZONE${D}" = "${B2}${T2}$(cat /etc/timezone) UTC $(date +"%Z")${D}"
echo -e "${B1}${T1}USER${D}" = "${B2}${T2}`whoami`${D}"
echo -e "${B1}${T1}OS${D}" = "${B2}${T2}$(uname -s) $(cat /etc/issue | awk '{printf("%s %s", $1, $2)}')${D}"
echo -e "${B1}${T1}DATE${D}" = "${B2}${T2}$(date +"%d %B %Y %T")${D}"
echo -e "${B1}${T1}UPTIME${D}" = "${B2}${T2}`uptime -p`${D}"
echo -e "${B1}${T1}UPTIME_SEC${D}" = "${B2}${T2}$(cat /proc/uptime | awk '{print int($1) " sec"}')${D}"
echo -e "${B1}${T1}IP${D}" = "${B2}${T2}`hostname --all-ip-addresses`${D}"
echo -e "${B1}${T1}MASK${D}" = "${B2}${T2}$(ip -4 a | grep global | awk 'FNR == 1 {printf "%s", $4}')${D}"
echo -e "${B1}${T1}GATEWAY${D}" = "${B2}${T2}$(ip route | grep default | awk '{print $3}')${D}"
echo -e "${B1}${T1}RAM_TOTAL${D}" = "${B2}${T2}$(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$2/1024)}')${D}"
echo -e "${B1}${T1}RAM_USED${D}" = "${B2}${T2}$(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$3/1024)}')${D}"
echo -e "${B1}${T1}RAM_FREE${D}" = "${B2}${T2}$(free -m | awk '/^Mem:/ || /^Память:/{printf("%.3f GB\n",$4/1024)}')${D}"
echo -e "${B1}${T1}SPACE_ROOT${D}" = "${B2}${T2}$(df /root/ | awk '/\/$/ {printf("%.2f MB", $2/1024)}')${D}"
echo -e "${B1}${T1}SPACE_ROOT_USED${D}" = "${B2}${T2}$(df /root/ | awk '/\/$/ {printf("%.2f MB", $3/1024)}')${D}"
echo -e "${B1}${T1}SPACE_ROOT_FREE${D}" = "${B2}${T2}$(df /root/ | awk '/\/$/ {printf("%.2f MB", $4/1024)}')${D}"
echo

TEMP_B1=$column1_background
TEMP_T1=$column1_font_color
TEMP_B2=$column2_background
TEMP_T2=$column2_font_color

if [[ $TEMP_B1 = 1 ]]; then
column1="white"
elif [[ $TEMP_B1 = 2 ]]; then
column1="red"
elif [[ $TEMP_B1 = 3 ]]; then
column1="green"
elif [[ $TEMP_B1 = 4 ]]; then
column1="blue"
elif [[ $TEMP_B1 = 5 ]]; then
column1="purple"
elif [[ $TEMP_B1 = 6 ]]; then
column1="black"
fi

if [[ $TEMP_T1 = 1 ]]; then
font1="white"
elif [[ $TEMP_T1 = 2 ]]; then
font1="red"
elif [[ $TEMP_T1 = 3 ]]; then
font1="green"
elif [[ $TEMP_T1 = 4 ]]; then
font1="blue"
elif [[ $TEMP_T1 = 5 ]]; then
font1="purple"
elif [[ $TEMP_T1 = 6 ]]; then
font1="black"
fi

if [[ $TEMP_B2 = 1 ]]; then
column2="white"
elif [[ $TEMP_B2 = 2 ]]; then
column2="red"
elif [[ $TEMP_B2 = 3 ]]; then
column2="green"
elif [[ $TEMP_B2 = 4 ]]; then
column2="blue"
elif [[ $TEMP_B2 = 5 ]]; then
column2="purple"
elif [[ $TEMP_B2 = 6 ]]; then
column2="black"
fi

if [[ $TEMP_T2 = 1 ]]; then
font2="white"
elif [[ $TEMP_T2 = 2 ]]; then
font2="red"
elif [[ $TEMP_T2 = 3 ]]; then
font2="green"
elif [[ $TEMP_T2 = 4 ]]; then
font2="blue"
elif [[ $TEMP_T2 = 5 ]]; then
font2="purple"
elif [[ $TEMP_T2 = 6 ]]; then
font2="black"
fi



if [[ ! $TEMP_B1 =~ ^[0-6]$ ]]; then
echo "Column 1 background = default (black)"
else
echo "Column 1 background = $TEMP_B1 ($column1)"
fi

if [[ ! $TEMP_T1 =~ ^[0-6]$ ]]; then
echo "Column 1 font color = default (white)"
else
echo "Column 1 font color = $TEMP_T1 ($font1)"
fi

if [[ ! $TEMP_B2 =~ ^[0-6]$ ]]; then
echo "Column 2 background = default (red)"
else
echo "Column 2 background = $TEMP_B2 ($column2)"
fi

if [[ ! $TEMP_T2 =~ ^[0-6]$ ]]; then
echo "Column 2 font color = default (blue)"
else
echo "Column 2 font color = $TEMP_T2 ($font2)"
fi
)
