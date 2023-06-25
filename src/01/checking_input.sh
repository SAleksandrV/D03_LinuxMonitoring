#! /bin/bash

function check {
  if [[ $1 =~ ^[-+]?[0-9]+([.,/]?[0-9]?[e]?[+-]?[0-9]+)?$ ]]
  then
  echo "Wrong! The input argument must be a string"
  else
  echo "You have entered $1"
  fi
}
