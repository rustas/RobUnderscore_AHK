; Settings, game_mode 1=standalone, 2=Steam
global game_mode = 2
global flask1 = False
global flask2 = True
global flask3 = True
global flask4 = False
global flask5 = False 

global RobU_Version = 1.3

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
#Include, lib\Content.ahk
#Include, GameWindow.ahk

while(True){
    #If WinActive("ahk_class POEWindowClass") 
        Sc029::FlaskPopper()
        ~$^+MButton::AutoFire()
        ~$^LButton::RSI_Preventer()
        F1::ZoneRemaining()
        F2::TY()
        F3::TravelToHideout()
        F4::Logout()
        F5::Content()
        5::Quicksilver()
; F5::GetMousePos()
        return
    #If
}