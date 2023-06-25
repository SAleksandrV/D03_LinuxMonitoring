#! /bin/bash

. ./information.sh

function file {
    echo "Write information to a file? (Y/N)"
    read -n 1 answer
    if [[ $answer == ["Yy"] ]]
    then
      output > ./"$(date +'%d_%m_%y_%H_%M_%S.status')"
    fi  
}
