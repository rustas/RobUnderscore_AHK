FlaskPopper(){
    Random, rand, 10, 25
    CoordMode, Pixel
    FlaskRunning = 0xF9D799
    PixelGetColor, getColorFlask1, 313, 1073, RGB
	if(getColorFlask1 != FlaskRunning){
		SendInput 1
		Sleep rand
	}
    PixelGetColor, getColorFlask2, 358, 1073, RGB
    if(getColorFlask2 != FlaskRunning){
        SendInput 2
        Sleep rand
    }
    PixelGetColor, getColorFlask3, 405, 1073, RGB
    if(getColorFlask3 != FlaskRunning){
        SendInput 3
        Sleep rand
    }
    ; PixelGetColor, getColorFlask4, 451, 1073, RGB
    ; if(getColorFlask4 != FlaskRunning){
    ;     SendInput 4
    ;     Sleep rand
    ; }
    PixelGetColor, getColorFlask5, 499, 1073, RGB
    if(getColorFlask5 != FlaskRunning){
        SendInput 5
        Sleep rand
    }
}