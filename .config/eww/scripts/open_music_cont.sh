#!/bin/bash

state=$(eww get open_wmusic)

open_wmusic() {
    if [[ -z $(eww list-windows | grep '*wmusic') ]]; then
        eww open wmusic
    fi
    eww update open_wmusic=true
}

close_wmusic() {
    eww update open_wmusic=false
}

case $1 in
    close)
        close_wmusic
        exit 0;;
esac

case $state in
    true)
        close_wmusic;;
    false)
        open_wmusic;;
esac
