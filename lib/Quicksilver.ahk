Quicksilver(){
    Random, rand, 10, 50
    CoordMode, Pixel
    FlaskRunning = 0xF9D799
    PixelGetColor, getColorFlask5, 662, 1433, RGB
    if(getColorFlask5 != FlaskRunning){
        SendInput 5
        Sleep rand
    }
}