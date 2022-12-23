#!/bin/zsh
case $(rofi -dmenu << EOF | sed 's/^ *//'
    shutdown
    restart
    sleep
    logout
EOF
) in
    "shutdown")
        systemctl poweroff
        ;;
    "restart")
        systemctl reboot
        ;;
    "sleep")
        systemctl suspend
        ;;
    "logout")
        swaymsg exit
        ;;
esac
