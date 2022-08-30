SetWorkingDir %A_ScriptDir%
if not A_IsAdmin {
	Run *RunAs "%A_ScriptFullPath%"
}
#SingleInstance Force

; MsgBox, %A_ScriptDir%\dev\
; MsgBox, %A_ScriptDir%\lib\
; #Include %A_ScriptDir%\dev\
; #Include %A_ScriptDir%\lib\

#Include, dev\GetMousePos.ahk
#Include, lib\GUI.ahk
#Include, lib\FlaskPopper.ahk
#Include, lib\Quicksilver.ahk
#Include, lib\Logout.ahk
#Include, lib\TravelToHideout.ahk
#Include, lib\TY.ahk
#Include, lib\ZoneRemaining.ahk
#Include, lib\AutoFire.ahk

while(True){
    #If WinActive("ahk_class POEWindowClass") 
        Sc029::FlaskPopper()
        ~$^+MButton::AutoFire()
        ~$^LButton::RSI_Preventer()
        F1::ZoneRemaining()
        F2::TY()
        F3::TravelToHideout()
        F4::Logout() 
; F5::GetMousePos()
; 5::Quicksilver() 
        return
    #If
    Sleep 200
}
; Hotkey, Sc029 , on
; Hotkey, ~$+MButton , on
; Hotkey, F1 , on
; Hotkey, F2 , on
; Hotkey, F3 , on
; Hotkey, F4 , on
; Hotkey, F5 , on
; Hotkey, 5 , on

; Hotkey, Sc029 , off
; Hotkey, ~$+MButton , off
; Hotkey, F1 , off
; Hotkey, F2 , off
; Hotkey, F3 , off
; Hotkey, F4 , off
; Hotkey, F5 , off
; Hotkey, 5 , off

; ~$^
