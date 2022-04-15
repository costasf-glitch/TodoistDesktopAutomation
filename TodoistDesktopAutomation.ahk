#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Open up the Todoist Desktop Window via the hotkey combination Win+Alt+Q
Send, #!q

; Pause for a fraction of a second, send the clipboard and then gracefully exit
Sleep, 10
Send %Clipboard%
Return