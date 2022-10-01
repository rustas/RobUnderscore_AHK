TY(){
    Global CharName
    BlockInput On
    Sleep 5
    SendInput {Enter}
    SendInput ^A{BS}
    SendInput, ty
    SendInput {Enter}
    ; SendInput {/kick %CharName%}
    ; SendInput {Enter}
    BlockInput Off
    return
}