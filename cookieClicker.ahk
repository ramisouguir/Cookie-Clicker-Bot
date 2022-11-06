#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!c::
MouseMove, 250, 480
loop
{
 GetKeyState, state, q
 if state=D
{
  break
} 
else
{
 MouseClick, left
}
}
Escape::
ExitApp
return