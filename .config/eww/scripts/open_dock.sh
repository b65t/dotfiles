#!/bin/bash

state=$(eww get open_dock)

open_dock() {
    if [[ -z $(eww list-windows | grep '*dock') ]]; then
        eww open dock
    fi
    eww update open_dock=true
}

close_dock() {
    eww update open_dock=false
}

case $1 in
    close)
        close_dock
        exit 0;;
esac

case $state in
    true)
        close_dock;;
    false)
        open_dock;;
esac
