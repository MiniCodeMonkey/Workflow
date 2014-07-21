#!/bin/sh

# First, check if the Thunderbolt displays are connected
if [[ $(system_profiler SPDisplaysDataType) == *Thunderbolt* ]]
then
	# Make sure that all windows are not full screen and set their position
	osascript makeFullScreen.scpt "Sublime Text" false
	osascript makeFullScreen.scpt "Sequel Pro" false
	osascript makeFullScreen.scpt "Google Chrome" false
	osascript makeFullScreen.scpt "iTerm" false

	osascript setWindowBoundaries.scpt "Sublime Text" 0 0 1280 1440
	osascript setWindowBoundaries.scpt "Sequel Pro" 3840 0 1280 1440
	osascript setWindowBoundaries.scpt "Google Chrome" 1280 0 1280 1440
	osascript setWindowBoundaries.scpt "iTerm" 2560 0 1280 1440
else
	# Make sure all windows are full screen
	osascript makeFullScreen.scpt "Sublime Text" true
	osascript makeFullScreen.scpt "Sequel Pro" true
	osascript makeFullScreen.scpt "Google Chrome" true
	osascript makeFullScreen.scpt "iTerm" true
fi
