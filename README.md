# yubitools
Yubioath, ykman and others

Use at your own peril.

## Available
* yubikey manager (CLI and QT)
* yubioath-desktop

## How to run

Arguments:
* `ykman` --> will run the QT version of Yubikey manager
* `ykman-cli <ARGS>` --> will run the CLI version of Yubikey manager with your args
* `yubioath` --> will run yubioath-desktop

```
docker run --name yubitools --rm --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb madchap/yubioath:0.1 ykman
```

## Screenshot or it did not happen

![ykman](assets/ykman.png)
