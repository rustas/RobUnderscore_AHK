GetMousePos(){
    CoordMode, Pixel
    MouseGetPos, getMousePosX, getMousePosY
    ;MsgBox x = %getMousePosX% , y = %getMousePosY%
    
    PixelGetColor, getColor, getMousePosX, getMousePosY, RGB
    MsgBox Color: %getColor% at posX: %getMousePosX% , posY: %getMousePosY%
    
    ;0x99D7F9
    return
}