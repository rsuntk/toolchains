#! /usr/bin/env bash

clone() {
	echo "[+] Cloning $@ into $@ .."
	git clone --depth=1 --single-branch https://github.com/rsuntk/toolchains.git -b $@ $@ &> /dev/null
	echo "[+] Clone done."
}

[ ! -z $@ ] && clone $@ || echo "[-] `basename $0` need argument!" && exit
