# Config Files

Based on [HyDE](https://github.com/prasanthrangan/hyprdots) and [JhoalfercoQtileDotfiles](https://github.com/JhonatanFerrer/JhoalfercoQtileDotfiles) 

Hyprland config is default [HyDE](https://github.com/prasanthrangan/hyprdots) with modified keybinds.

Qtile config is almost the same as [JhoalfercoQtileDotfiles](https://github.com/JhonatanFerrer/JhoalfercoQtileDotfiles) with some tweaks

## Dependencies
- qtile
- qtile-extras
- kitty
- zsh
- zsh-autosuggestions
- zsh-syntax-highlighting
- oh-my-posh
- flatpak
- htop
- tty-clock
- unimatrix
- thunar
- thunar-archive-plugin
- thunar-volman
- tumbler
- gvfs
- ark
- p7zip
- librewolf
- lxappearance
- fastfetch
- picom
- rofi-wayland
- polkit-gnome
- gtk-engine-murrine
- kvantum
- kvantum-qt5
- kvantum-theme-catppuccin-git
- pipewire
- playerctl
- brightnessctl
- xdg-utils
- waypaper (wallpaper gui)
- feh (wallpaper support for x11)
- swaybg (wallpaper support for wayland)
- flameshot
- tokyonight-gtk-theme-git
- imagemagick (needed to display images in kitty)
- alsa-utils (amixer is needed for volume widget)
- python libs: iwlib, psutil, pywlroots dbus-next
- [papirus icons](https://www.pling.com/p/1166289)
- [ubuntu](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Ubuntu.zip) and [firacode](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip) nerdfonts (for bar and terminal, respectively)

If you want to use this config on wayland comment the line
```shell
#picom &
```
on
```shell
~/.config/qtile/autostart.sh
```

I also recommend the [Tokyo Night GTK theme](https://www.gnome-look.org/p/1681315). You may also find useful this [wallpaper repository](https://github.com/tokyo-night/wallpapers)

## Installation
This is NOT an install script and its not meant to work on a minimal install it will not set up a display manager nor Xorg or Wayland 

Install dependencies (Arch only for now) (you will need and AUR helper)

```shell
sudo pacman -Syu
yay -S qtile kitty zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-posh thunar thunar-archive-plugin thunar-volman tumbler gvfs ark p7zip fastfetch picom rofi-wayland polkit-gnome pipewire playerctl brightnessctl waypaper feh swaybg flameshot imagemagick alsa-utils python-iwlib python-psutil python-pywlroots qtile-extras python-dbus-next xdg-utils nerd-fonts flatpak lxappearance htop tty-clock unimatrix gtk-engine-murrine tokyonight-gtk-theme-git papirus-icon-theme-git librewolf-bin kvantum kvantum-qt5 kvantum-theme-catppuccin-git
```
Download/Clone this repo and move the files to your config directory (.config) except the Pictures and zsh folders these go on the home directory.

To use my zshrc and my prompt add a dot on the start of histfile and zshrc and move them to the home directory with the prompt.json file.

## Binds
SUPER + Return  = Kitty Terminal Emulator

SUPER + E    =   Thunar file manager

SUPER + B    =    Librewolf Web Browser

SUPER + Q    =    Kill Active Window

## Screenshots
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_17-30_1.png)

Some fastfetch images
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_16-23.png)

CLI applications: fastfetch, htop, tty-clock and unimatrix
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_17-09.png)

Apps
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_17-30.png)
