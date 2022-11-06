#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!v::
count:= 0
loop
{
GetKeyState, state, q
if (state = D)
  {
   break
  }
else
 {
  count += 1
  MouseGetPos, MouseX, MouseY
  PixelGetColor, color, %MouseX%, %MouseY%
  MouseX += 1
  MouseY += 1
  PixelGetColor, colorB, %MouseX%, %MouseY%
  FileAppend, %color%, C:\Users\Rami\Desktop\Colors.txt
  FileAppend, %colorB% `n, C:\Users\Rami\Desktop\Colors.txt
  }
}
return

Escape::
MsgBox, Process Terminated %count% Pairs Collected
ExitApp
return