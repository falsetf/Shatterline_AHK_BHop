#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Determine the panic button
#x::ExitApp

; Monitor the spacebar
~*Space::
    ; Check if the active window is "Shatterline.exe"
    IfWinActive, ahk_exe Shatterline.exe
    {
        ; Loop while the spacebar is held down
        While GetKeyState("Space", "P")
        {
            ; Send a spacebar key press
            Send, {Blind}{Space}

            ; Add a short delay to avoid overloading the application
            Sleep, 10
        }
    }
Return
