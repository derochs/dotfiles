#!/bin/bash

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=$(get_volume)
    bar=$(seq --separator="▭" 0 "$((volume / 5))" | sed 's/[0-9]//g')
    dunstify -t 1000 -i volume-up -r 2593 -u normal -a vol "  $bar"
}

case $1 in
    up)
        amixer -D pulse set Master on > /dev/null
        amixer -D pulse sset Master 5%+ > /dev/null
        send_notification
        ;;
    down)
        amixer -D pulse set Master on > /dev/null
        amixer -D pulse sset Master 5%- > /dev/null
        send_notification
        ;;
    mute)
        amixer -D pulse set Master 1+ toggle > /dev/null
        if is_mute ; then
            dunstify -i volume-muted -t 1000 -r 2593 -u normal -a vol ""
        else
            send_notification
        fi
        ;;
esac
