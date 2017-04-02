#!/bin/bash
# by Mik , don't hate pls
PROMPT='\033[1;33m'
BLUE='\033[1;34m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[1;17m'

printf "${PROMPT}\t\tCHOOSE THE NAME OF THE NETWORKING DEVICE ${BLUE}\n";
ip link show
printf "${PROMPT}enter name of the network device: ${CYAN}";
read NAME
printf "${NC}"
BOOL=0

while [ $BOOL -eq 0 ]; do
	clear
	ip -s -h link show $NAME
	BOOL=$?
	sleep 1
done
