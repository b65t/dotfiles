#!/bin/bash

state=$(eww get open_notifications-center)

open_notifications-center() {
    if [[ -z $(eww list-windows | grep '*notification-center') ]]; then
        eww open notification-center
    fi
    eww update open_notifications-center=true
}

close_notifications-center() {
    eww update open_notifications-center=false
}

case $1 in
    close)
        close_notifications-center
        exit 0;;
esac

case $state in
    true)
        close_notifications-center;;
    false)
        open_notifications-center;;
esac
