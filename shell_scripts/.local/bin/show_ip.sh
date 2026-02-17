#!/bin/bash
IP=$(curl -s icanhazip.com)
notify-send "Your External IP" "$IP"
