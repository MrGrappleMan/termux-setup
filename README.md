# Termux Setup for Android

This repo automates the process of common tools, packages and libraries.
There is also a provision for proot based distro installation.
All distros must contain the ability to VNC into the desktop environment
that comes pre-installed with the distro.

## Installation

You will need to have Termux installed on your Android device before proceeding
[Termux, the main application](https://github.com/termux/termux-app/releases)
[Termux X11, an addon to allow X11 to work properly for some distros](https://github.com/termux/termux-x11/releases)
[AVNC, a VNC client](https://github.com/gujjwal00/avnc/releases)

```sh
wget https://raw.githubusercontent.com/MrGrappleMan/termux-setup/master/main.sh | sh
```

The main procedure will occur automatically, you will be prompted for actions such
as selecting a distro to install, additional packages to install, and other
settings

For most users, distro 1 is recommended as it provides a stable and easy to use
environment
