#!/bin/bash

MPY_INSTALL="mpy-esp8266-install"

if [[ -d $MPY_INSTALL ]]; then
	echo "Submodules ok!"
else
	git submodule init
	git submodule update
fi
cd
. install.sh
cd ..
