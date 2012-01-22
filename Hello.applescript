tell application "CotEditor"
	if exists front document then
		set p to the path of front document as Unicode text
		set e to (do shell script "echo \"" & p & "\"|awk -F . '{print $NF}'")
		set h to (do shell script "echo $HOME")
		set d to h & "/Library/Application\\ Support/CotEditor/ScriptMenu/Hello.d/"
		set s to (d & "hello." & e as POSIX file)
		
		try
			set fileData to do shell script "cat " & (POSIX path of s)
			set contents of selection of front document to fileData
		end try
	end if
end tell