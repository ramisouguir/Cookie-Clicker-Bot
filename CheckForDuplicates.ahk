#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!z::
CoordMode, Pixel
loop
{
count:= 1
added:= 0
original:= 1
FileReadLine, current, C:\Users\Rami\Desktop\Count.txt, 1
FileReadLine, future, C:\Users\Rami\Desktop\Count.txt, 2
FileDelete, C:\Users\Rami\Desktop\Count.txt
FileAppend, %future%`n, C:\Users\Rami\Desktop\Count.txt
next:= future + 1
FileAppend, %next%, C:\Users\Rami\Desktop\Count.txt

loop
{
  FileReadLine, var, C:\Users\Rami\Desktop\Colors%current%.txt, %original%
  if (ErrorLevel = 1)
   {
     break
   }
  else
   {
     original += 1
   }
}

loop
{
 GetKeyState, state, q
 if state=D
 {
  FileDelete, C:\Users\Rami\Desktop\Count.txt
  FileAppend, %current%`n, C:\Users\Rami\Desktop\Count.txt
  FileAppend, %future%, C:\Users\Rami\Desktop\Count.txt
  break 2
 } 
 FileReadLine, color, C:\Users\Rami\Desktop\Colors%current%.txt, %count%
 if ErrorLevel = 1
  {
   break 
  }
 else{
 firstC := SubStr(color, 1, 8)
 secondC := SubStr(color, -8)
 PixelSearch, Px, Py, 0, 0, A_ScreenWidth, A_ScreenHeight, %firstC%, 0, Fast
  if (ErrorLevel = 1)
   {
     PixelSearch, Px, Py, 0, 0, A_ScreenWidth, A_ScreenHeight, %secondC%, 0, Fast
     if (ErrorLevel = 1)
      {
        FileAppend, %color%`n, C:\Users\Rami\Desktop\Colors%future%.txt
        added += 1
      }  
   }
 count += 1
 }
}

FileDelete, C:\Users\Rami\Desktop\Colors%current%.txt 
change:= original - added - 1
MsgBox, %change% Pairs Removed
}
MsgBox, Success
return