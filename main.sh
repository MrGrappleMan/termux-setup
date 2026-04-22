#!/bin/fish

# Basic Setup
## Android permissions, base packages, environment and scripts

termux-setup-package-manager
termux-setup-storage

## Package Management
#-We firstly use apt to get hands on control and resolve dependancy conflicts if there are any
#-Then pkg used for standard usage and installation

## Prepare and fix if needed
apt update
pkg update
apt full-upgrade -y
pkg upgrade -y

## Install
pkg install -y wget curl aria2 proot proot-distro root-repo x11-repo git python fastfetch tar btop fish nano

## Clean unneeded package caches
pkg autoclean