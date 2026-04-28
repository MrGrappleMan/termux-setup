#!/usr/bin/env sh

#-This script sets up the termux-setup repository as a one time run program

# Indicate start
clear
echo "Starting termux-setup..."

# Get repo
#-For copying over configurations and presets

## Enter main directory
cd

## Delete old repo
echo "Deleting old termux-setup repository if present..."
rm -rf termux-setup

## Clone repo
echo "Cloning termux-setup repository..."
git clone https://github.com/MrGrappleMan/termux-setup.git

## Make permissive
chmod -R a+rw termux-setup

## Enter repo directory
cd termux-setup

# Setup
#-Android permissions, base packages, environment and scripts

## Inbuilt helper scripts
echo "Running helper scripts..."
termux-setup-package-manager # Setup pkg
termux-setup-storage # Allow access to internal storage

## Package Management
#-It is recommended to use pkg for package management
#-It updates the package index and selects the correct mirror(s)
#-Use apt or dpkg only if there is something broken

### Fix broken data if there is any
echo "Fixing broken data if present..."
dpkg --configure -a
apt --fix-broken install

### Update
echo "Updating packages..."
pkg update
pkg upgrade -y

### Install
echo "Installing packages..."
pkg install -y wget curl aria2 \
    proot proot-distro \
    root-repo x11-repo \
    git python fastfetch tar btop \
    fish zsh bash \
    nano

### Cleanup
echo "Cleaning up package caches..."
pkg autoclean # remove unneeded package caches

# Distros
#-Distro installation by proot or other methods

#./distro.fish


## Enter main directory
cd

# Cleanup repo
echo "Clearing out termux-setup repository..."
rm -rf termux-setup

# Indicate exit success
clear
echo "Setup complete!"
exit 0