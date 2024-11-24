#!/bin/bash

# Usage: ./brightness.sh [get|up|down]
# get - Get current brightness
# up - Increase brightness
# down - Decrease brightness

STEP=10

# Get brightness
get_backlight() {
	brightnessctl -m | cut -d, -f4 | sed 's/%//'
}


# Notify
notify_user() {
	notify-send -e -h string:x-canonical-private-synchronous:brightness_notif -h int:value:$CURRENT -u low "Brightness : $CURRENT%"
}

# Change brightness
change_backlight() {

	local CURRENT_BRIGHTNESS
	CURRENT_BRIGHTNESS=$(get_backlight)

	# Calculate new brightness
	if [[ "$1" == "+${STEP}%" ]]; then
		NEW_BRIGHTNESS=$((CURRENT_BRIGHTNESS + STEP))
	elif [[ "$1" == "${STEP}%-" ]]; then
		NEW_BRIGHTNESS=$((CURRENT_BRIGHTNESS - STEP))
	fi

	# Ensure new brightness is within valid range
	if (( NEW_BRIGHTNESS < 0 )); then
		NEW_BRIGHTNESS=0
	elif (( NEW_BRIGHTNESS > 100 )); then
		NEW_BRIGHTNESS=100
	fi

	brightnessctl set "${NEW_BRIGHTNESS}%"
	CURRENT=$NEW_BRIGHTNESS
	notify_user
}

# Execute accordingly
case "$1" in
	"get")
		get_backlight
		;;
	"up")
		change_backlight "+${STEP}%"
		;;
	"down")
		change_backlight "${STEP}%-"
		;;
	*)
		get_backlight
		;;
esac
