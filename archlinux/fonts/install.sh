#!/bin/bash
PARENT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
BLUE='\033[1;34m'
FONT_AWESOME=$PARENT_PATH/fonts/fontawesome-webfont.ttf
LOCAL_FONT=$PARENT_PATH/fonts/config

cp $FONT_AWESOME $HOME/.fonts/fontawesome-webfont.ttf
sudo cp $LOCAL_FONT /etc/fonts/local.conf
sudo pacman -S --noconfirm --needed ttf-ubuntu-font-family noto-fonts-emoji

echo -e "${BLUE}Done setting up fonts. Install ttf-fira-code for vs-code"
