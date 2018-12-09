#!/bin/bash
sudo apt-get update
sudo apt-get install pkg-config libgcrypt20-dev build-essential autoconf automake libtool libcurl4-gnutls-dev libjansson-dev uthash-dev libncursesw5-dev libudev-dev libusb-1.0-0-dev libevent-dev libmicrohttpd-dev libhidapi-dev -y
./autogen.sh
./configure
echo
echo "Now use ./configure --help to select configuration then make"
echo "You can use --disable-other-drivers for build only one specific driver"
