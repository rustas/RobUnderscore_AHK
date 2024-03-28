Logout(){
    if(game_mode == 1){
        cportsCommand := "cports.exe /close * * * * PathOfExile.exe"
        Critical
        RunWait, %cportsCommand%
    }
    if(game_mode == 2){
        cportsCommand := "cports.exe /close * * * * PathOfExileSteam.exe"
        Critical
        RunWait, %cportsCommand%
    }
}