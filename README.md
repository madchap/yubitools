# yubitools
Yubioath, ykman and others

Use at your own peril.

## Available
* yubikey manager (CLI and QT)
* yubioath-desktop
* Personalization tool
* PIV Manager

## How to run

Arguments:
* `ykman` --> will run the QT version of Yubikey manager
* `ykman-cli <ARGS>` --> will run the CLI version of Yubikey manager with your args
* `yubioath` --> will run yubioath-desktop
* `yubipiv` --> PIV QT tool
* `yubipiv-cli <ARGS>` --> PIV CLI 
* `yubiperso` --> Personalization UI
* `yubiperso-cli <ARGS>` -->  Personalization CLI

```
docker run --name yubitools --rm --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb madchap/yubioath:0.1 ykman
```

You could of course define some alias, to make it easier, such as the following for `yubioath-desktop`:

`alias yubioath='docker run --name yubitools --rm --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb madchap/yubioath:0.1 yubioath'`

## Screenshot or it did not happen

### Yubikey manager
![ykman](assets/ykman.png)

### Yubikey personalization tool
![ykpero](assets/ykperso.png)
