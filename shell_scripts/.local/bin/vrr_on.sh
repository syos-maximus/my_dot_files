#!/bin/bash

hyprctl eval 'hl.monitor({
    output   = "DP-1",
    mode     = "3440x1440@164.90",
    position = "0x0",
    scale    = 1,
    supports_hdr = 0,
    vrr = 2,
})'
notify-send "VRR is back on"
