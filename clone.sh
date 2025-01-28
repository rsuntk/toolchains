#! /usr/bin/env bash

clone() {
	echo "[+] Cloning $@ into $@ .."
	git clone --depth=1 --single-branch https://github.com/rsuntk/toolchains.git -b $@ $@
	[ -d $(pwd)/$@ ] && echo "[+] Clone done." || "[-] Clone failed!" && exit
}

[ ! -z $@ ] && clone $@ || echo "[-] `basename $0` need argument!" && exit
