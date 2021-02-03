##################################################################################
# BFGMINER 5.5.0-mk4                                                             #
##################################################################################

This is a bfgminer 5.5.0 with support for all last drivers and Futurebit Moonlander2.

This software is forked from bfgminer original .

(you can refer to original documentation to docs/README)

## Moonlander2 scrtypt Usb miner ##

![](https://github.com/wareck/bfgminer/blob/bfgminer/docs/moonlander.jpg)

to build this specific code on linux:

	sudo apt-get update -y
	sudo apt-get install  build-essential autoconf automake libtool pkg-config libcurl4-gnutls-dev \
        libjansson-dev uthash-dev libncursesw5-dev libudev-dev libusb-1.0-0-dev \
        libevent-dev libmicrohttpd-dev libhidapi-dev libgcrypt20-dev
	git clone https://github.com/wareck/bfgminer.git
	cd bfgminer
	sudo usermod -a -G dialout,plugdev $USER
	sudo cp 70-bfgminer.rules /etc/udev/rules.d/
	CFLAGS="-O2 -march=native" ./autogen.sh
	./configure --enable-scrypt --enable-futurebit
	make
	make install

### Option Summary ###

```
  --gekko-compac-freq <clock>   Chip clock speed (MHz) default is 200 Mhz
  --gekko-2pac-freq <clock> Chip clok speed (Mhz) default is 150 Mhz 
  --suggest-diff <value> Limit diff for starting mine default is 32
```

### Command line ###

```
 ./cgminer -o pool_url -u username -p password --gekko-compac-freq 200 --gekko-2pac-freq 150 
```

For windows users, you can donwload the release zip file

Inside you can find a cgminer_run.bat file and you can adjust you settings.

## Nicehash extranonce support ##

You can use your miner with last extranonce support for nicehash by adding #xnsub at the address end, like this:

	./cgminer -o stratum+tcp://scrypt.eu.nicehash.com:3333#xnsub -u my_btc_address -p x --gekko-compac-freq 200 --gekko-2pac-freq 150
	
