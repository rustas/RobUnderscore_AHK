; Settings
global CharName = "BeafinderBob"
global flask1 = True
global flask2 = True
global flask3 = True
global flask4 = False
global flask5 = False

SetWorkingDir %A_ScriptDir%
if not A_IsAdmin {
	Run *RunAs "%A_ScriptFullPath%"
}
#SingleInstance Force

; #Include, lib\GUI.ahk
#Include, dev\GetMousePos.ahk
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
        5::Quicksilver()
; F5::GetMousePos()
        return
    #If
}