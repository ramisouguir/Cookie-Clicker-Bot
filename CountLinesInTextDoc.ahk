#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!w::
count:=1
loop
{
  FileReadLine, var, C:\Users\Rami\Desktop\Colors21.txt, %count%
  if (ErrorLevel = 1)
   {
     break
   }
  else
   {
     count += 1
   }
}
MsgBox, %count%
ExitApp
return