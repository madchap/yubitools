#!/usr/bin/env bash

set -ex

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# lauch pcscd
pcscd -d >/dev/stdout 2>/dev/stderr

case "$1" in
	"ykman"		)
		ykman-gui
		;;
	"ykman-cli"	)
		ykman "${@:2}"
		;;
	"yubioath"	)
		yubioath-desktop
		;;
	"yubipiv"	)
		pivman
		;;
	"yubipiv-cli"	)
		yubico-piv-tool "${@:2}"
		;;
	"yubiperso"	)
		yubikey-personalization-gui
		;;
	"yubiperso-cli"	)
		ykpersonalize "${@:2}"
		;;
	*		)
		echo "This command is not in the catalog. Exiting."
		exit -1
		;;
esac
