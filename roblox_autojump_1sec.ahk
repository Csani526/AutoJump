#Persistent
#InstallKeybdHook
#SingleInstance Force

; ---- Jump ----
n::
    ToggleN := !ToggleN
    if (ToggleN) {
        SetTimer, Jump, 1000
    } else {
        SetTimer, Jump, Off
    }
    return

Jump:
        Send, {Space}
    }
    return

; ---- X exit ----
x::
    ExitApp
    return
