#! /bin/bash

source colors.sh
source information.sh

IFS=" "

if [ ! -e task_colors.conf ]
then
  echo "There is no configuration file"
  exit
else
TEMP_B1=$(grep column1_background task_colors.conf | cut -b 20-)
TEMP_T1=$(grep column1_font_color task_colors.conf | cut -b 20-)
TEMP_B2=$(grep column2_background task_colors.conf | cut -b 20-)
TEMP_T2=$(grep column2_font_color task_colors.conf | cut -b 20-)
fi

if [ $TEMP_B1 == $TEMP_T1 ] || [ $TEMP_B2 == $TEMP_T2 ]
then
  echo "Wrong! The color of the text and background should be different"
else
  
  echo $system
fi
