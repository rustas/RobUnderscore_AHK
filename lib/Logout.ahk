Logout(){
    if(game_mode == 1){
        cportsCommand := "cports.exe /close * * * * PathOfExile.exe"
        Critical
        RunWait, %cportsCommand%
    }
    if(game_mode == 2){
        cportsCommand := "cports.exe /close * * * * SteamPathOfExile.exe"
        Critical
        RunWait, %cportsCommand%
    }
}