#!/usr/bin/env bash

####################################################################
# Update sudo to only require re-entry of password every 5 minutes #
####################################################################

echo "Defaults:$(whoami) timestamp_timeout=05" | (sudo EDITOR='tee -a' visudo)

######################################################
# Install xcode and other required xcode header pkgs #
######################################################

xcode-select --install
sudo installer -pkg /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg -target /
sudo ln -s /usr/bin/gcc /usr/local/bin/gcc-4.2

############################
# Install brew pkg manager #
############################

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null

#############################################################
# install gpg which will be required for git signed commits #
#############################################################
brew install gpg
