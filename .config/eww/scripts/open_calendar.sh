#!/bin/bash

state=$(eww get open_calendar)

open_calendar() {
    if [[ -z $(eww list-windows | grep '*calendar') ]]; then
        eww open calendar
    fi
    eww update open_calendar=true
}

close_calendar() {
    eww update open_calendar=false
}

case $1 in
    close)
        close_calendar
        exit 0;;
esac

case $state in
    true)
        close_calendar;;
    false)
        open_calendar;;
esac
