#!/bin/bash

killall .waybar-wrapped
killall .dunst-wrapped
waybar
dunst
hyprctl reload
