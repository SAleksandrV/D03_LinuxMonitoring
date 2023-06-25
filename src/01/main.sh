#! /bin/bash

. ./checking_input.sh

if ! [ $1 ]
then
echo "You should enter 1 argument"
elif [ $2 ]
then
echo "You should only enter 1 argument"
else
check $1
fi
