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
- timeshift
- timeshift-systemd-timer
- htop
- tty-clock
- dunst
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
- xwaylandvideobridge
- pipewire
- playerctl
- brightnessctl
- xdg-utils
- xorg-xwayland
- mission-center
- waypaper (wallpaper gui)
- feh (wallpaper support for x11)
- swaybg (wallpaper support for wayland)
- flameshot
- tokyonight-gtk-theme-git
- selectdefaultapplication-git (to select default apps with a gui)
- imagemagick (needed to display images in kitty)
- alsa-utils (amixer is needed for volume widget)
- python libs: iwlib, psutil, pywlroots dbus-next
- [papirus icons](https://www.pling.com/p/1166289)
- [ubuntu](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Ubuntu.zip) and [firacode](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip) nerdfonts (for bar and terminal, respectively)

You may also find useful this [wallpaper repository](https://github.com/tokyo-night/wallpapers)


## Install Script (Arch-Based distros only)

This will NOT crate a backup of your config files so back up your .config folder just in case.

This should work on a minimal install and/or for installing alongside another DE/WM though it will probably mess with your DE settings such as theming.

```shell
sudo pacman -Syu --needed git base-devel
git clone --depth 1 https://github.com/fumofumoenjoyer/.config.git ~/fumofumo
cd fumofumo
sh install.sh
```

NOTE: Right now you will have to set up the GTK and Kvantum themes manually by following the last four lines in the Manual Install section.

## Manual Install
This is NOT an install script and its not meant to work on a minimal install it will not set up a display manager nor Xorg or Wayland 

[Video Tutorial](https://www.youtube.com/watch?v=JD6TK90WiE4) (its a bit outdated but it still works)

Install dependencies (Arch only for now) (This will also install some apps i use in my workflow like web browser and screenshot utility) (you will need and AUR helper)

```shell
sudo pacman -Syu
yay -S qtile kitty zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-posh thunar thunar-archive-plugin thunar-volman tumbler gvfs ark p7zip fastfetch picom rofi-wayland polkit-gnome pipewire playerctl brightnessctl waypaper feh swaybg flameshot imagemagick alsa-utils python-iwlib python-psutil python-pywlroots qtile-extras python-dbus-next xdg-utils nerd-fonts flatpak lxappearance htop tty-clock unimatrix gtk-engine-murrine tokyonight-gtk-theme-git papirus-icon-theme-git librewolf-bin kvantum kvantum-qt5 kvantum-theme-catppuccin-git selectdefaultapplication-git mission-center xorg-xwayland dunst timeshift-systemd-timer timeshift xwaylandvideobridge
```
Download/Clone this repo and move the files to your config directory (.config) except the Pictures and zsh folders these go on the home directory.

Enable the timeshift service for snapshots
```shell
sudo systemctl daemon-reload
sudo systemctl enable timeshift-boot.timer
```

To use my zshrc and my prompt add a dot on the start of histfile and zshrc and move them to the home directory with the prompt.json file.

To theme GTK apps use lxappearance, tokyo night theme is preinstalled.

To theme Qt/KDE apps do this:

Edit /etc/environment as root by sudo nano /etc/environment and add the line QT_STYLE_OVERRIDE=kvantum and save.

Then select your theme in kvantum, catupucchin themes are preinstalled since there is no tokyo-night for kvantum in the AUR.




## Binds
SUPER + Return  = Kitty Terminal Emulator

SUPER + E    =   Thunar file manager

SUPER + B    =    Librewolf Web Browser

SUPER + Q    =    Kill Active Window

SUPER + P    =    Screenshot entire screen

SUPER + CTRL + P    =    Screenshot specified region

## Wayland

WARNING: the systray will NOT work on wayland since the widget is not compatible with it, the statusnotifier widget should work but it will not show menus for the applet, im looking for a fix.

If you want to use this config on wayland comment the line
```shell
picom &
```
on
```shell
~/.config/qtile/autostart.sh
```

## Laptop Users

I recommend installing the tlp package for better battery life
```shell
sudo pacman -S tlp
```
then run
```shell
systemctl enable tlp.service
```
If you want the wifi widget install the network manager applet
```shell
sudo pacman -S network-manager-applet
```
and uncomment the line
```shell
#nm-applet &
```
on
```shell
~/.config/qtile/autostart.sh
```

Then reboot for changes to take effect

## Screenshots
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_17-30_1.png)

Some fastfetch images
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_16-23.png)

CLI applications: fastfetch, htop, tty-clock and unimatrix
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_17-09.png)

Apps
![imagen](https://github.com/Juancholololo/.config/blob/main/Pictures/screenshots/2024-10-16_17-30.png)
