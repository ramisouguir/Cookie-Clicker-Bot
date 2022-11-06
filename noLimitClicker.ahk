#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!w::
loop
{
 GetKeyState, state, a
 if state=D
 {
  break
 } 
 else
 {
  MouseClick, left
 }
}
return

Escape::
ExitApp
return