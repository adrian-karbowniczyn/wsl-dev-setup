#!/bin/bash

# COLORS
NORMAL=$(tput sgr0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
POWDER_BLUE=$(tput setaf 153)

# Change specific line in selected folder
# $1 - line number $2 - text $3 - folder
function changeLineInFile() {
  ex -s -c "$1c|$2" -c x $3
}

# Symlink configs
function symLinkConfig() {
  printf "${POWDER_BLUE}Symlink $1 config\n"
  printf -- "-----------------------\n"
  printf $RED
  rm -i $HOME/$1
  printf $GREEN
  ln -s -v $HOME/configs/$1 $HOME/$1
  printf "\n"
}

function github_setup() {
  printf "${POWDER_BLUE}Github setup\n"
  printf -- "-----------------------\n"

  printf "${YELLOW}Type your github username: "
  read GITHUB_USER
  printf "${YELLOW}Type your github email: "
  read GITHUB_EMAIL

  changeLineInFile "2" "    name  = ${GITHUB_USER}" ".gitconfig"
  changeLineInFile "3" "    email = ${GITHUB_EMAIL}" ".gitconfig"
  printf "\n"

  symLinkConfig ".gitconfig"
  symLinkConfig ".gitignore"
}

function windows_terminal_setup() {
  printf "${POWDER_BLUE}Copy windows terminal config\n"
  printf -- "-----------------------\n"

  printf "${YELLOW}Type your Windows Username: "
  read WINDOWS_USER_NAME

  CONFIG_FILE=/mnt/c/Users/$WINDOWS_USER_NAME/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/profiles.json
  printf $GREEN

  if test -f "$CONFIG_FILE"; then
    cp -i $HOME/configs/windows-terminal-config.json $CONFIG_FILE
  else
    printf "${RED}\nError: Wrong Username ${WINDOWS_USER_NAME} \n"
  fi
}

printf -- "\n\n---------------------------\n"
printf "|${GREEN} WSL-CONFIG by Adrian K. ${NORMAL}|\n"
printf -- "---------------------------\n\n"

symLinkConfig ".zshrc"
symLinkConfig ".vimrc"
github_setup
symLinkConfig ".npmrc"
windows_terminal_setup
