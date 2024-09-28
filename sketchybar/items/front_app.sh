#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       background.color=$ACCENT_COLOR \
                                 icon.color=$BAR_COLOR \
                                 icon.font="sketchybar-app-font:Regular:20.0" \
                                 label.color=$BAR_COLOR \
                                 script="$CONFIG_DIR/plugins/front_app.sh"            \
           --subscribe front_app front_app_switched
