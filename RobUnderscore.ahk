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
; #Include, lib\GUI.ahk
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