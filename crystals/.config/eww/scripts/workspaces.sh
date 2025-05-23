#!/bin/bash

function get_workspaces_info() {
    swaymsg -t get_workspaces | jq -c '
      (
        [range(1;7) as $num |
        (.[] | select(.num == $num)) // {
            id: -$num,
            name: ($num|tostring),
            num: $num,
            empty: true,
            focused: false,
            visible: false,
            representation: null
        }] 
      ) +
      (
            map(select(.num > 6 and (.focused == true or .representation != null)))
      ) |
        map(. + {empty: (.representation == null and .focused == false)}) |
        sort_by(.num)
    '
}

get_workspaces_info

swaymsg -t subscribe '["workspace"]' --monitor | {
    while read -r event; do
        get_workspaces_info
    done
}
