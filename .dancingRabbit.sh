#!/bin/sh


# shellcheck disable=SC2112
function main() {
  local dancing=0
  local changeRotate=0
  local space=""
  local nbSpace=0
  setxkbmap ru
  while true
  do
    clear
    if [ $changeRotate == 1 ]
    then
      echo -e "\x1b[1m\x1b[32m$space(\\__/)\x1b[0m"
      echo -e "\x1b[1m\x1b[32m$space(°.° )\x1b[0m"
      echo -e "\x1b[1m\x1b[31m$space ❤\x1b[32m<  \\ \x1b[0m"
    else
      echo -e "\x1b[1m\x1b[32m$space(\\__/)\x1b[0m"
      echo -e "\x1b[1m\x1b[32m$space( °.°)\x1b[0m"
      echo -e "\x1b[1m\x1b[32m$space/  >\x1b[31m❤\x1b[0m"
    fi
    echo -e "\x1b[1m\x1b[35m***********************************\x1b[0m"
    echo -e "\x1b[1m\x1b[35m* \x1b[3$(( ( RANDOM % 7 )  + 1 ))mNe jamais laisser son pc ouvert \x1b[35m*\x1b[0m"
    echo -e "\x1b[1m\x1b[35m***********************************\x1b[0m"
    if [ $dancing == 0 ]
    then
        echo -e "\x1b[1m            \x1b[35m||\x1b[32m(\\__/)\x1b[0m"
        echo -e "\x1b[1m            \x1b[35m||\x1b[32m(°.° )\x1b[0m"
        echo -e "\x1b[1m            \x1b[35m||\x1b[32m<   \\ \x1b[0m"
        dancing=1
    else
       echo -e "\x1b[1m\x1b[32m       (\\__/)\x1b[35m||\x1b[0m"
       echo -e "\x1b[1m\x1b[32m       ( °.°)\x1b[35m||\x1b[0m"
       echo -e "\x1b[1m\x1b[32m       /    >\x1b[35m||\x1b[0m"
      dancing=0
    fi
    if [ $changeRotate == 0 ]
    then
      nbSpace=$(( nbSpace + 1 ))
    else
      nbSpace=$(( nbSpace - 1 ))
    fi
    if [ $nbSpace == 29 ]
    then
      changeRotate=1
      nbSpace=29
    elif [ $nbSpace == 0 ]
    then
      changeRotate=0
      nbSpace=0
    fi
    space=""
    for (( i = 0; i < $nbSpace; i++ ))
    do
      space+=" "
    done
  	sleep 0.5
  done

}

main
