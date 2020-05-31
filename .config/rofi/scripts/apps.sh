#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Mail : adi1090x@gmail.com
## browser : @adi1090x
## music : @adi1090x

rofi_command="rofi -theme themes/apps.rasi"

# Links
terminal=""
files="ﱮ"
editor="  "
browser=""
steam=""
discord=""
vlc="嗢"

# Variable passed to rofi
options="$terminal\n$files\n$editor\n$browser\n$steam\n$discord\n$vlc"

chosen="$(echo -e "$options" | $rofi_command -p "Most Used" -dmenu -selected-row 0)"
case $chosen in
    $terminal)
        konsole &
        ;;
    $files)
        termite -e vifm &
        ;;
    $editor)
        konsole -e nvim &
        ;;
    $browser)
        firefox &
        ;;
    $vlc)
	vlc &
	;;
    $steam)
        steam &
        ;;
    $discord)
        discord &
        ;;
esac

