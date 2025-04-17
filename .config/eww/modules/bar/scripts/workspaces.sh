#!/bin/bash

get_workspaces_info() {
    active_ws=$(hyprctl activeworkspace -j | jq -r '.id')
    output=$(hyprctl workspaces -j | jq --argjson active "$active_ws" '
        sort_by(.id) | map(. + {active: (.id == $active)})
    ')
    echo $output
}

get_workspaces_info

socat -u "UNIX-CONNECT:${XDG_RUNTIME_DIR}/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock" - | while read -r line; do
    [[ $line == workspace* || $line == focusedmon* ]] && get_workspaces_info
done
