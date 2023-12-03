Content(){
    BlockInput On
    SendInput, {Enter}
    SendInput, ^A{BS}
    SendInput, Extra content in this map
    SendInput, {Enter}
    Sleep, 50
    SendInput, {Enter}
    SendInput, ^A{BS}
    SendInput, {/}leave
    SendInput, {Enter}
    BlockInput Off
    return
}