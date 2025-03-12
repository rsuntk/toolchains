#! /usr/bin/env bash

clone() {
	echo "INFO: Fetching branch ($@) into $@ folder ..."
	git clone --depth=1 --single-branch https://github.com/rsuntk/toolchains.git -b $@ $@ >/dev/null 2>&1
	[ -d $(pwd)/$@ ] && echo "INFO: Successfully fetched $@." || echo "FAILED: Fetch failed, cleaning up." && exit
}

[ ! -z $@ ] && clone $@ || echo "FAILED: No branch was spesified" && exit
