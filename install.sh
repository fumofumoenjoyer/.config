cd
sudo pacman -Syu --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd
yay -S xorg sddm qtile kitty zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-posh thunar thunar-archive-plugin thunar-volman tumbler gvfs ark p7zip fastfetch picom rofi-wayland polkit-gnome pipewire playerctl brightnessctl waypaper feh swaybg flameshot imagemagick alsa-utils python-iwlib python-psutil python-pywlroots qtile-extras python-dbus-next xdg-utils nerd-fonts flatpak lxappearance htop tty-clock unimatrix gtk-engine-murrine tokyonight-gtk-theme-git papirus-icon-theme-git librewolf-bin kvantum kvantum-qt5 kvantum-theme-catppuccin-git selectdefaultapplication-git mission-center xorg-xwayland dunst
cd fumofumo
mv -t ~/.config dunst fastfetch kitty picom qtile rofi Thunar xfce4
mv -t ~ Pictures
cd ~/fumofumo/zsh
mv histfile .histfile
mv zshrc .zshrc
mv -t ~ .histfile prompt.json .zshrc
chsh -s /bin/zsh
systemctl enable sddm
