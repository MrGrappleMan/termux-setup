

#-This is the main script from which you start execution of
#-the rest of the script

# Basic Setup
## Enviroment permissions and setup

termux-setup-package-manager
termux-setup-storage

## Package Management
#-We firstly use apt to get hands on control and resolve dependancies
#-Then pkg used for standard usage

apt update
pkg update
apt full-upgrade -y
pkg upgrade -y

### Package install
pkg install -y wget curl aria2 proot proot-distro root-repo x11-repo git python hollywood fastfetch tar

pkg autoclean