#!/usr/bin/env bash

########################################
# Install node development environment #
########################################

brew install nvm
mkdir ~/.nvm/
echo "export NVM_DIR=~/.nvm" >> ~/.bash_profile
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.bash_profile
source ~/.bash_profile
nvm install 8.10.0
nvm use --delete-prefix v8.10.0

########################################
# Install node development environment #
########################################

# List available versions
# nvm ls-remote
# Install desired version (ie- 10.15.3)
# nvm install 10.15.3
# Set version to use
# nvm use --delete-prefix v10.15.3
