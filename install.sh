#!/bin/bash

MPY_INSTALL="mpy-esp8266-install"

git submodule update --init
cd $MPY_INSTALL
. install.sh
cd ..
