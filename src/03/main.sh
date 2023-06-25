#! /bin/bash

# Background
BBLACK="\033[40m"; BRED="\033[41m"; BGREEN="\033[42m"
BBLUE="\033[44m"; BPURPLE="\033[45m"; BWHITE="\033[47m"

# Text
TBLACK="\033[30m"; TRED="\033[31m"; TGREEN="\033[32m"
TBLUE="\033[34m"; TPURPLE="\033[35m"; TWHITE="\033[37m"

if ! [ $4 ] || [ $5 ]
then
  echo "Enter 4 numeric arguments. Example 1 2 3 4"
elif [ $1 == $2 ] || [ $3 == $4 ]
then
  echo "Wrong! The color of the text and background should be different"
elif ! [[ $1 =~ ^[1-6]$ ]]
then
  echo "Wrong! Arguments must be in the range 1-6"
elif ! [[ $2 =~ ^[1-6]$ ]]
then
  echo "Wrong! Arguments must be in the range 1-6"
elif ! [[ $3 =~ ^[1-6]$ ]]
then
  echo "Wrong! Arguments must be in the range 1-6"
elif ! [[ $4 =~ ^[1-6]$ ]]
then
  echo "Wrong! Arguments must be in the range 1-6"
else
  case $1 in
    "1") B1=$BWHITE ;;
    "2") B1=$BRED ;;
    "3") B1=$BGREEN ;;
    "4") B1=$BBLUE ;;
    "5") B1=$BPURPLE ;;
    "6") B1=$BBLACK ;;
  esac

  case $2 in
    "1") T1=$TWHITE ;;
    "2") T1=$TRED ;;
    "3") T1=$TGREEN ;;
    "4") T1=$TBLUE ;;
    "5") T1=$TPURPLE ;;
    "6") T1=$TBLACK ;;
  esac

  case $3 in
    "1") B2=$BWHITE ;;
    "2") B2=$BRED ;;
    "3") B2=$BGREEN ;;
    "4") B2=$BBLUE ;;
    "5") B2=$BPURPLE ;;
    "6") B2=$BBLACK ;;
  esac

  case $4 in
    "1") T2=$TWHITE ;;
    "2") T2=$TRED ;;
    "3") T2=$TGREEN ;;
    "4") T2=$TBLUE ;;
    "5") T2=$TPURPLE ;;
    "6") T2=$TBLACK ;;
  esac

  echo "$(sh information.sh "$B1" "$T1" "$B2" "$T2")"
fi
