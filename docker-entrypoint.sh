#!/usr/bin/env bash

set -ex

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# lauch pcscd
pcscd -d >/dev/stdout 2>/dev/stderr

if [[ "$1" == "ykman" ]]; then
# exec ykman UI
	ykman-gui
elif [[ "$1" == "ykman-cli" ]]; then
# exec ykman commands, cli way.
	ykman "${@:2}"
elif [[ "$1" == "yubioath" ]]; then
	yubioath-desktop
fi

#exit 0
