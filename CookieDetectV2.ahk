#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!v::
CoordMode, Pixel
PixelSearch, Ax, Ay, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x4DA4C7, 1, Fast
 if (ErrorLevel = 0)
  {
    MouseMove, Ax, Ay
    MsgBox, Success!
  }
return