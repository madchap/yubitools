#!/usr/bin/env bash

set -e

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
	"man"		)
		man "${@:2}"
		;;
	*		)
		cat <<EOF
This command does not exist.
	
Usage:
docker run --name yubitools --rm \\
	--privileged \\
	-e DISPLAY=\$DISPLAY \\
	-v /tmp/.X11-unix:/tmp/.X11-unix \\
	-v /dev/bus/usb:/dev/bus/usb \\
	madchap/yubitools:latest <COMMAND>

	where <COMMAND> can be:
	- ykman			: will launch the yubikey manager UI.
	- ykman-cli 		: will launch the yubikey manager CLI. You want to pass your program parameters too.
	- yubioath 		: will launch the yubioath desktop UI.
	- yubipiv		: will launch the yubikey PIV manager UI.
	- yubipiv-cli		: will launch the yubikey PIV manager CLI. You want to pass your program parameters too.
	- yubiperso		: will launch the yubikey personalization UI.
	- yubiperso-cli		: will launch the yubikey personalization CLI. You want to pass your program parameters too.
	- man <PROG_NAME>	: will pull up the man page for the actual program (not the <COMMAND>). Look up the docker-entrypoint.sh file for program names.

EOF
		exit -1
		;;
esac
