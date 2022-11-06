#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!v::
CoordMode, Pixel
MouseGetPos, xstart, ystart
count:= 0
loop
{
GetKeyState, state, q
 if state=D
 {
   break
   MsgBox, Success!
 }
result := % Mod(count, 8)
if result = 0
{
PixelSearch, Ax, Ay, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x4DA4C7, 1, Fast
 if (ErrorLevel = 0)
  {
    MouseClick, left, Ax, Ay
  }
 else
  {
    MouseClick, left, xstart, ystart
  }
}
count+= 1
}
return