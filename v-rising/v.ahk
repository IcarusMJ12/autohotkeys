mouselook_on := false
context_wheel := false

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
global context_wheel
global mouselook_on
if (!context_wheel) {
	context_wheel := true
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
global context_wheel
global mouselook_on
context_wheel := false
send {/ up}
if (mouselook_on) {
	send, z
}
return

Shift::
global context_wheel
global mouselook_on
if (!context_wheel) {
	context_wheel := true
	If (GetKeyState("'")) {
		mouselook_on := true
		Send {' up}
	} Else {
		global mouselook_on
		mouselook_on := false
	}
}
send {. down}
return

Shift Up::
global context_wheel
global mouselook_on
context_wheel := false
send {. up}
if (mouselook_on) {
	send, z
}
return
