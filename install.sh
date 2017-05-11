#!/bin/bash

MPY_INSTALL="mpy-esp8266-install"

if [[ ":$PATH:" == *"/xtensa-lx106-elf/bin:"* ]]; then
	echo "xtensa compiler already installed"
else
	git submodule update --init
	cd $MPY_INSTALL
	. install.sh
	cd ..
fi
