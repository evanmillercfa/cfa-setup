#!/usr/bin/env bash
GREEN="\033[01;32m"
BLUE="\033[01;34m"
RED="\033[01;31m"
NOC="\033[0m"

# Install AWS CLI tool
pip3 install awscli # Assumes python 3 is already installed
echo "complete -C '/usr/local/bin/aws_completer' aws" | tee -a ~/.bash_profile .  #Tab completion for bash

# Install docker
brew cask install docker
brew install bash-completion docker-completion docker-compose-completion docker-machine-completion

printf "\n\n${GREEN}Docker installed.${NOC} Open Docker (CMD + space, >docker). You will be prompted to enter your ${RED}username/password${NOC} and give Docker Desktop privileged access.\n\n"

# Install slack
brew cask install slack


printf "\n\n${GREEN}TOOLS INSTALLED.${NOC}\n\nTo see a list of optional tools, visit: https://cfacorp.atlassian.net/wiki/spaces/TEAM/pages/53823339/Developer+Tools#DeveloperTools-InitialRequirements.\n\n"
