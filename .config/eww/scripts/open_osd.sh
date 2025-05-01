#!/bin/bash

state=$(eww get open_volume_osd)

open_volume_osd() {
    if [[ -z $(eww list-windows | grep '*osd-volume') ]]; then
        eww open osd-volume
    fi
    eww update open_volume_osd=true
}

close_volume_osd() {
    eww update open_volume_osd=false
}

case $1 in
    close)
        close_volume_osd
        exit 0;;
esac

case $state in
    true)
        close_volume_osd;;
    false)
        open_volume_osd;;
esac
