TY(){
    Global CharName
    BlockInput On
    SendInput, {Enter}
    SendInput, ^A{BS}
    SendInput, ty
    SendInput, {Enter}
    Sleep, 50
    SendInput, {Enter}
    SendInput, ^A{BS}
    SendInput, {/}leave
    SendInput, {Enter}
    BlockInput Off
    return
}