#Persistent
#InstallKeybdHook
#SingleInstance Force

; ---- Csak akkor működnek ezek a hotkey-ek, ha a Roblox aktív ablak ----
#IfWinActive ahk_exe RobloxPlayerBeta.exe

; ---- Jump ----
n::
    ToggleN := !ToggleN
    if (ToggleN) {
        SetTimer, Jump, 900000
    } else {
        SetTimer, Jump, Off
    }
    return

Jump:
    if WinExist("ahk_exe RobloxPlayerBeta.exe") {
        WinActivate  
        Sleep, 50
        Send, {Space}
    }
    return

; ---- X exit ----
x::
    ExitApp
    return
