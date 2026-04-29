# Termux Setup for Android

This repo automates the process of common tools, packages and libraries.
There is also a provision for proot based distro installation.

## Installation

You will need to have Termux installed on your Android device before proceeding
[Termux, main app](https://github.com/termux/termux-app/releases)
[Termux X11, dedicated X11 implementation for Termux](https://github.com/termux/termux-x11/releases)
[AVNC, VNC client](https://github.com/gujjwal00/avnc/releases)

```sh
# Use curl because it is present by default
curl -H "Cache-Control: no-cache, no-store, must-revalidate" -H "Pragma: no-cache" -H "Expires: 0" -sSL https://raw.githubusercontent.com/MrGrappleMan/termux-setup/master/start.sh | sh
```

The main procedure will occur automatically, you will be prompted for actions such
as selecting a distro to install
