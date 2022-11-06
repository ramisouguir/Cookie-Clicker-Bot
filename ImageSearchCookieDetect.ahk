#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!d::
loop
{
CoordMode, Pixel
ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, C:\Users\Rami\Desktop\cookie.PNG
if ErrorLevel = 0
  {
    MsgBox Cookie Spotted At %FoundX% x %FoundY%
    MouseMove, %FoundX%, %FoundY%
    break
  } 
}
return