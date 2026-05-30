# thiiagoms/dotfiles

Linux workstation dotfiles and bootstrap scripts for development, containers, editors, terminal tools, and window-manager workflows.

## Overview

This repository keeps the setup for a fresh Linux machine in one place. It includes:

- A cross-distro package installer
- Terminal and shell configuration
- System info and visual terminal tooling
- i3, picom, conky, and related desktop configuration
- VS Code user settings

On Arch-based systems, desktop applications are installed from the AUR when `yay` or `paru` is available. On Debian/Ubuntu, Fedora, and openSUSE, desktop applications are installed through Flatpak and Flathub where native package names are inconsistent.

## Usage

Clone the repository:

```bash
git clone https://github.com/thiiagoms/dotfiles
cd dotfiles
```

Run the installer:

```bash
./install-packages.sh
```

The script detects the system base from `/etc/os-release` when possible. It still asks for confirmation before installing packages.

## Apply Configs

Copy only the configs you want to use:

```bash
mkdir -p ~/.config
cp -R config/terminator ~/.config/
cp -R config/fastfetch ~/.config/
cp -R config/i3 ~/.config/
cp -R config/picom ~/.config/
cp config/starship.toml ~/.config/
```

VS Code settings can be copied into the VS Code user settings location for your platform.
