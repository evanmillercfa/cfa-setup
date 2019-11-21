#!/usr/bin/env bash

GREEN="\033[01;32m"
BLUE="\033[01;34m"
RED="\033[01;31m"
NOC="\033[0m"

######################################
# Base script to run all setup files #
######################################

printf "\n${BLUE}Working script:${NOC} 01-prereq.sh\n\n"
./01-prereq.sh
printf "\n${BLUE}Working script:${NOC} 02-env.sh\n\n"
./02-env.sh
printf "\n${BLUE}Working script:${NOC} 03-node.sh\n\n"
./03-node.sh
printf "\n${BLUE}Working script:${NOC} 04-java.sh\n\n"
./04-java.sh
printf "\n${BLUE}Working script:${NOC} 05-tools.sh\n\n"
./05-tools.sh
