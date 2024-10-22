options=" 󰒲  Suspend\n 󰜉  Reboot\n 󰐥  Shutdown"
selected=$(echo -e "$options" | rofi -dmenu -p "" -l 3 -theme "$HOME"/.config/rofi/configpowermenu.rasi)

case "$selected" in
    " 󰐥  Shutdown")
        shutdown now
        ;;
    " 󰜉  Reboot")
        reboot
        ;;
    " 󰒲  Suspend")
        systemctl suspend
        ;;
    *)
        echo "Invalid Option"
        ;;
esac