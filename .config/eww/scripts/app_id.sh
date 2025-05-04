#!/bin/bash

function get_active_app_id() {
    swaymsg -t get_tree | \
    jq -r '.. | select(.focused? == true) | .app_id // .window_properties.class // "desktop"'
}

get_active_app_id

swaymsg -t subscribe '["window"]' --monitor | \
while read -r line; do
    get_active_app_id
done
