#!/bin/bash

source mpy-esp8266-install/config.sh

# Ask if my modules should be added to the python build
MPY_MOD=$MPY_DIR/esp8266/modules
MAX_MOD=source/maxi
function question { printf "${GREEN} > Do you want to add Maxi's custom modules?${NC}"; }
function answer_yes {
	if [[ -d $MPY_MOD/maxi ]]; then
		printf "${GREEN} > ${YELLOW}${MPY_MOD}/maxi${GREEN} already exists.${NC}\n"
	else
		if [[ -d $MAX_MOD ]]; then
			ln -s $MAX_MOD $MPY_MOD
			printf "${GREEN} > You need to re-compile the firmware!${NC}\n"
		else
			printf "${RED} > Could not find ${YELLOW}$MAX_MOD${RED}!${NC}\n"
		fi
	fi
}
ask question answer_yes
