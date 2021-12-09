#!/bin/sh
xrandr --newmode "2560x1080_68.00"  264.25  2560 2736 3008 3456  1080 1083 1093 1126 -hsync +vsync
xrandr --addmode HDMI-1 2560x1080_68.00
xrandr --output HDMI-1 --primary --mode 2560x1080_68.00
