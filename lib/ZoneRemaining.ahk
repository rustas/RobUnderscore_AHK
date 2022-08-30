ZoneRemaining(){
    BlockInput On
    SendInput, {enter}
    Sleep 5
    SendInput, {/}remaining
    SendInput, {enter}
    BlockInput Off
    return
}