mouselook_on := false
ctrl_down := false

z::
If (GetKeyState("'")) {
	Send {' up}
} Else {
	CoordMode, Mouse, Screen
	MouseMove, 1920, 480, 0  ; set 1st param to 1/2 screen width, 2nd to convenient offset from top
	Send {' down} ; mouselook key (default is right click)
}
return

b::
If (GetKeyState("'")) {
	Send {' up}
}
Send, [
return

m::
If (GetKeyState("'")) {
	Send {' up}
}
send, ]
return

o::
If (GetKeyState("'")) {
	Send {' up}
}
send, \
return


Tab::
If (GetKeyState("'")) {
	Send {' up}
}
send, -
return

j::
If (GetKeyState("'")) {
	Send {' up}
}
send, =
return

Ctrl::
global ctrl_down
global mouselook_on
if (!ctrl_down) {
	ctrl_down := true
	If (GetKeyState("'")) {
		mouselook_on := true
		Send {' up}
	} Else {
		global mouselook_on
		mouselook_on := false
	}
}
send {/ down}
return

Ctrl Up::
global ctrl_down
global mouselook_on
ctrl_down := false
send {/ up}
if (mouselook_on) {
	send, z
}
return
