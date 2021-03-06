#!/bin/bash
BLUE='\033[1;34m'
NC='\033[0m'
NVM_VERSION=0.33.8
ZSH_INSTALL="./zsh/install.sh"
GIT_INSTALL="./git/install.sh"
I3_INSTALL="./i3/install.sh"
TERMINATOR_INSTALL="./terminator/install.sh"
DUNST_INSTALL="./dunst/install.sh"
FONTS_INSTALL="./fonts/install.sh"
PACKAGES_INSTALL="./packages/install.sh"

if which pacman &> /dev/null; then
    mkdir -p $HOME/{.config,.fonts,go,Projects,Pictures,Downloads}
    mkdir -p $HOME/Pictures/{Screenshots,Wallpapers}

    # Installing scripts
    . $GIT_INSTALL    
    . $PACKAGES_INSTALL
    . $FONTS_INSTALL
    . $DUNST_INSTALL
    . $TERMINATOR_INSTALL
    . $I3_INSTALL
    . $ZSH_INSTALL
fi
echo -e "${BLUE}Done setting up your archlinux${NC}"