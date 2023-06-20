# Manjaro i3 Setup

## Installation

Download Manjaro i3 at [link](https://manjaro.org/download/)

For Windows, use `Rufus` or `Windows USB/DVD Download Tool`

For Linux, use `WoeUSB` to create a bootable USB drive with the Windows installation media

For install alongside of other OS, remove that OS drive before booting installation media

## Post-Installation

Install `yay` [link](https://github.com/Jguer/yay) or `aura` [link](https://github.com/age-rs/aura-package-manager)

Install [Archlinux packages](https://archlinux.org/packages/) or [AUR packages](https://aur.archlinux.org/packages), my list packages at [link](https://gist.github.com/4mirul/bebad82a1dfdb10ef1ceb9c4b379d376/#file-pacman-aur-packages-txt)

### Add `git` username and email and credential

`git config --global user.name "4mirul"`

`git config --global user.email "myemail@example.com"`

Generate key [link](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and add ssh public key to [link](https://github.com/settings/keys)

### GTK Themes

Install GTK themes from [link](https://www.gnome-look.org/browse?cat=135&ord=rating)

### Firefox Developer Edition setting

Login Firefox account

Install [one-line-firefox](https://github.com/khuedoan/one-line-firefox)

### Install `pulseaudio`

`install_pulse` [link](https://github.com/oberon-manjaro/i3-scripts/tree/master/bin)

### Fix `dunst`

`cp /etc/dunst/dunstrc ~/.config/dunst/dunstrc`

### Change mouse acceleration speed

Refer [link](https://wiki.archlinux.org/title/Mouse_acceleration)

`xinput list`

`xinput list-props "mouse name"`

`xinput --set-prop "mouse name" "prop name" 2`

Example, `xinput set-prop "SINOWEALTH Game Mouse" "libinput Accel Speed" -0.5`

Set in `.bashrc` or `.zshrc`

### Some app slow open

Remove `xdg-desktop-portal` and `xdg-desktop-portal-gtk`

### Add WireGuard connection

1. Get `.conf` file from server
2. Add WireGuard connection
3. Edit WireGuard connection
4. Go to `WireGuard` tab
5. Add `Interface name`
6. Add `Private key`
7. Tick `Add peer routes`
8. Click `Add` under `Peers`
   1. Add `Public key`
   2. Add `Allowed IPs`
   3. Add `Endpoint`
   4. Add `Preshared key`
   5. Click `Apply`
9. Go to `IPv4 Settings`
10. Select `Method` `Manual`
11. Click `Add` under `Addresses`
    1. Add `Address` and `Netmask`
12. Add `DNS servers`
13. Go to `IPv6 Settings`
14. Select `Method` `Disabled`
15. Click `Save`

## Additional

### `pacman` cheatsheet

```.shell
# Update package lists and upgrade system
sudo pacman -Syu

# Search for packages by name or keywords
pacman -Ss <package_name>

# Install a package
sudo pacman -S <package_name>

# Remove a package (with its dependencies that are not required by other packages)
sudo pacman -Rns <package_name>

# Remove a package (keeping its dependencies if they are required by other packages)
sudo pacman -R <package_name>

# List all installed packages
pacman -Q

# Search for packages owning a specific file
pacman -Qo <file_path>

# List all files installed by a package
pacman -Ql <package_name>

# Check if any installed packages need an update
sudo pacman -Qu

# Clean the package cache (remove older versions of installed packages)
sudo pacman -Sc

# Show information about a package
pacman -Si <package_name>

# Show detailed information about a package
pacman -Qi <package_name>

# Upgrade a single package
sudo pacman -U /path/to/package.pkg.tar.xz

# List all available repositories
sudo pacman -Sl

# Enable a specific repository
sudo pacman -Sy

# Disable a specific repository
sudo pacman -Syy

# Clear the package cache
sudo pacman -Scc

# List explicitly installed packages (excluding dependencies)
pacman -Qe

# List packages installed as dependencies (excluding explicitly installed packages)
pacman -Qd

# Sync and refresh the package database
sudo pacman -Syy

# Clean package cache and sync the database
sudo pacman -Scc && sudo pacman -Syy

# Check which packages were installed as dependencies and are no longer required
sudo pacman -Qdt
```

### `yay` cheatsheet

```.shell
# Search for packages in AUR
yay -Ss <package_name>

# Install a package from AUR
yay -S <package_name>

# Remove a package installed from AUR (with its dependencies)
yay -Rns <package_name>

# Upgrade all packages, including AUR packages
yay -Syu

# Upgrade a specific package from AUR
yay -Syu <package_name>

# Show information about an AUR package
yay -Si <package_name>

# Show detailed information about an AUR package
yay -Qi <package_name>

# Search for installed packages in AUR
yay -Qs <package_name>

# List all installed packages from AUR
yay -Qm

# List explicitly installed packages from AUR (excluding dependencies)
yay -Qe

# Clean package cache and remove old versions of installed AUR packages
yay -Sc

# Search for orphaned packages (no longer required by any installed package)
yay -Qdt

# Upgrade AUR packages using interactive mode
yay -Syu --devel

# List ignored packages
yay -Qii

# Unignore a package
yay -S --noconfirm --needed --asdeps <package_name>

# Rebuild a package from AUR
yay -Sb <package_name>

# Skip package confirmation and installation options
yay --noconfirm --needed -S <package_name>
```

### `aura` cheatsheet

```.shell
# Search for packages in AUR
aura -Ss <package_name>

# Install a package from AUR
aura -A <package_name>

# Remove a package installed from AUR (with its dependencies)
aura -Rns <package_name>

# Upgrade all packages, including AUR packages
aura -Syu

# Upgrade a specific package from AUR
aura -Syu <package_name>

# Show information about an AUR package
aura -Si <package_name>

# Show detailed information about an AUR package
aura -Qi <package_name>

# Search for installed packages in AUR
aura -Qs <package_name>

# List all installed packages from AUR
aura -Qm

# List explicitly installed packages from AUR (excluding dependencies)
aura -Qe

# Clean package cache and remove old versions of installed AUR packages
aura -Sc

# Search for orphaned packages (no longer required by any installed package)
aura -Qdt

# Upgrade AUR packages using interactive mode
aura -Syu --devel

# List ignored packages
aura -Qii

# Unignore a package
aura -S --noconfirm --asdeps <package_name>

# Rebuild a package from AUR
aura -Sb <package_name>

# Skip package confirmation and installation options
aura --noconfirm --needed -S <package_name>
```
