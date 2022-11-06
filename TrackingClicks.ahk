#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!c::
CoordMode, Pixel
loop
{
 GetKeyState, stateQ, q
 if stateQ=D
 {
  MsgBox, Done
  ExitApp
 }
 GetKeyState, stateM, LButton
 if stateM=D
 {
  MouseGetPos, xpos, ypos
  FileAppend, %xpos% x %ypos%`n, C:\Users\Rami\Desktop\Scripts\CookieClickerBot\Coords.txt
  sleep 130
 }
}
return