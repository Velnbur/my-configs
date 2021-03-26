#!/bin/bash
KEYBOARD_ID=$(xinput | grep "AT Translated Set 2 keyboard" | cut -f 2 | cut -d= -f 2)
TOUCHPAD_ID=$(xinput | grep "SYNA328F:01 06CB:CD5 Mouse" | cut -f 2 | cut -d= -f 2)
xinput set-int-prop $KEYBOARD_ID "Device Enabled" 8 1 #Enable Keyboard
xinput set-int-prop $TOUCHPAD_ID "Device Enabled" 8 1 #Enable Pad
xrandr --output eDP --rotate normal #Rotate screen
killall onboard #Turn off onscreen keyboard	
