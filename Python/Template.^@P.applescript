(*
Insert the header for python with utf-8
*)
(* written by nakamuxu. 2010-07-20 *)
--
property newStr : "#!/usr/bin/env python
# -*- coding: utf-8 -*-

if __name__ == '__main__':
    pass
"
--
--
tell application "CotEditor"
	if exists front document then
		set {loc, len} to range of selection of front document
		set numOfMove to count of character of newStr
		set contents of selection of front document to newStr
		set range of selection of front document to {loc + numOfMove, 0}
	end if
end tell

