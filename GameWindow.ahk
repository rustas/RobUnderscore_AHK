#SingleInstance force
#IfWinNotActive ahk_exe explorer.exe
	; Set your resolution (minus decorations like start bars if you wish to leave those on-screen.
	w = 2560
	h = 1250
	w_wasted = 6 ; width used by resize bars
	h_wasted = 29 ; width used by caption frame and resize bars
 
; Window to fullscreen
F10::
SetTitleMatchMode, 2
WinGet Style, Style, A
if(Style & 0xC00000) { ; if has WS_CAPTION. Ignore sizebox value.
	WinGetPos, X, Y, Width, Height, A
	WinSet, Style, -0xC40000, A ; removes attributes, including sizebox...doesn't do a strict subtraction
	WinMove,A,,0,0,w,h
} else {
	;+0xC40000
	WinSet, Style, +0xC40000, A
	; Note: will set WS_SIZEBOX even if not previously present
	if(Width > w - w_wasted) {
		Width := %w%-%w_wasted%
	}
	if(Height > h - h_wasted) {
		Height := %h%-%h_wasted%
	}
	WinMove,A,,%X%,%Y%,%Width%,%Height%
}
WinSet Redraw
Return