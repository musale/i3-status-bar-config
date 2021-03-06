#!/bin/bash
PARENT_PATH=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
BLUE='\033[1;34m'
NC='\033[0m'
BASE_DEVEL=$(sudo pacman -Qs base-devel)

if [[ $BASE_DEVEL == "" ]]; then
  echo -e "${BASE}You don't have base-devel group package. Installing...${NC}"
  sudo pacman -S --noconfirm base-devel
  exit 1
fi

echo -e "${BLUE}Retrieving package-query...${NC}"
git clone https://aur.archlinux.org/package-query.git
cd package-query
echo -e "${BLUE}Installing package-query...${NC}"
makepkg -si --noconfirm
cd ..
echo -e "${BLUE}Retrieving yaourt...${NC}"
git clone https://aur.archlinux.org/yaourt.git yaourt_
cd yaourt_
echo -e "${BLUE}Installing yaourt...${NC}"
makepkg -si --noconfirm
cd ..
rm -rf package-query yaourt_
echo -e "${BLUE}Done installing yaourt!${NC}"
