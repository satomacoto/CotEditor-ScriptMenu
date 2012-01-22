(* written by satomacoto *)
on run {thePath}
	if (thePath is not "") then
			set theUrl to "file://" & thePath
		tell application "Chromium"
			activate
			tell window 1
				set newTab to make new tab with properties {URL:theUrl}
			end tell
		end tell
	end if
end run