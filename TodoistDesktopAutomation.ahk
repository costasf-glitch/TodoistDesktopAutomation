; File can be compiled to an .exe file that can be called using the following command:
; "[PathToAHKEXECompiler]\Ahk2Exe.exe" /in TodoistDesktopAutomation.ahk /out TodoistDesktopAutomation.exe

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Open up the Todoist Desktop Window via the hotkey combination Win+Alt+Q
Send, #!q

; Pause for a fraction of a second, send the clipboard and then gracefully exit
Sleep, 50

;SendInput %Clipboard% --> doesn't work consistently, sometimes strips  + characters from within the link

Send ^v
Return