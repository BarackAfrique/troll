#!/bin/sh

function repairZshrc() {
     rm ~/.zshrc
     cp -f ~/.zshrc_backup ~/.zshrc
     cp -f ~/.bashrc_backup ~/.bashrc
     rm ~/.zshrc_backup
     rm ~/.bashrc_backup
     rm ~/.dancingRabbit.sh
     rm ~/.repairZshrc.sh
     setxkbmap fr
}

repairZshrc
