on run argv
	set theapp to item 1 of argv
	set windowPosition to {item 2 of argv, item 3 of argv}
	set windowSize to {item 4 of argv, item 5 of argv}
	
	tell application "System Events"
		tell process theapp
			set frontWindow to first window
			set position of frontWindow to windowPosition
			set size of frontWindow to windowSize
		end tell
	end tell
end run