#!/bin/env fish

# Get repo files
#-For copying over configurations and presets

## Enter main directory first
cd

## Clone and enter repo
git clone https://github.com/MrGrappleMan/termux-setup.git
cd termux-setup

# Setup
#-Android permissions, base packages, environment and scripts

## Inbuilt helper scripts
termux-setup-package-manager # Setup pkg
termux-setup-storage # Allow access to internal storage

## Package Management
#-It is recommended to use pkg for package management
#-It updates the package index and selects the correct mirror(s)
#-Use apt or dpkg only if there is something broken

### Fix broken data if there is any
dpkg --configure -a
apt --fix-broken install

### Update
pkg update
pkg upgrade -y

### Install
pkg install -y wget curl aria2 \
    proot proot-distro \
    root-repo x11-repo \
    git python fastfetch tar btop \
    fish zsh bash \
    nano

### Cleanup
pkg autoclean # remove unneeded package caches

# Distros
#-Distro installation by proot or other methods

./distro.fish
