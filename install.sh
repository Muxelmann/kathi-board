#!/bin/bash

MPY_INSTALL="mpy-esp8266-install"

if [[ -d $MPY_INSTALL ]]; then
	echo "Submodules ok!"
else
	git submodule update --init
fi
cd $MPY_INSTALL
. install.sh
cd ..
