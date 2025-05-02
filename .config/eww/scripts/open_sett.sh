#!/bin/bash

state=$(eww get open_sett)

open_sett() {
    if [[ -z $(eww list-windows | grep '*settings') ]]; then
        eww open settings
    fi
    eww update open_sett=true
}

close_sett() {
    eww update open_sett=false
}

case $1 in
    close)
        close_sett
        exit 0;;
esac

case $state in
    true)
        close_sett;;
    false)
        open_sett;;
esac
