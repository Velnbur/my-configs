#!/bin/bash
KEYBOARD_ID=$(xinput | grep "AT Translated Set 2 keyboard" | cut -f 2 | cut -d= -f 2)
TOUCHPAD_ID=$(xinput | grep "SYNA328F:01 06CB:CD50 Mouse" | cut -f 2 | cut -d= -f 2)
xinput set-int-prop $KEYBOARD_ID "Device Enabled" 8 0 #Disable Keyboard
xinput set-int-prop $TOUCHPAD_ID "Device Enabled" 8 0 #Disable Pad
xrandr --output eDP --rotate inverted #Rotate screen
onboard & #Turn on onscreen keyboard
