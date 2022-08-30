Logout(){
    cportsCommand := "cports.exe /close * * * * PathOfExile.exe"
    Critical
    RunWait, %cportsCommand%
}