#!/bin/bash

function getZshrc() {
    cp -f ~/.zshrc ~/.zshrc_backup
    cp -f ~/.bashrc ~/.bashrc_backup
    cp -f ./.dancingRabbit.sh ~/
    cp -f ./.repairZshrc.sh ~/
    echo "alias ls=\"sh ~/.dancingRabbit.sh\"" >> ~/.zshrc
    echo "alias repairZshrc=\"sh ~/.repairZshrc.sh\"" >> ~/.zshrc
    echo "alias ls=\"sh ~/.dancingRabbit.sh\"" >> ~/.bashrc
    echo "alias repairZshrc=\"sh ~/.repairZshrc.sh\"" >> ~/.bashrc
}

getZshrc
