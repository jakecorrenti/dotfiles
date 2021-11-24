#!/bin/sh
xrandr --newmode "2560x1080_68.00"  264.25  2560 2736 3008 3456  1080 1083 1093 1126 -hsync +vsync
xrandr --addmode HDMI-1 2560x1080_68.00                                         
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --primary --mode 2560x1080_68.00 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-2 --off
