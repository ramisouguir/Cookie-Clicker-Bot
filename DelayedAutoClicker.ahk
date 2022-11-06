#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!c::
loop
{
 GetKeyState, state, x
 if state=D
 {
  break
 } 
 else
 {
  MouseClick, left
 }
sleep 10
}
return

Escape::
ExitApp
return

