TY(){
    BlockInput On
    Sleep 5
    SendInput {Enter}
    SendInput ^A{BS}
    SendInput, ty
    SendInput {Enter}
    BlockInput Off
    return
}