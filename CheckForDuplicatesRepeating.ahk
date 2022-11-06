#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!z::
CoordMode, Pixel
count:= 1
bigCount:= 5
previousCount:= 4

loop
{
loop
{
 FileReadLine, color, C:\Users\Rami\Desktop\Colors%previousCount%.txt, %count%
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
           FileAppend, %color%`n, C:\Users\Rami\Desktop\Colors%bigCount%.txt
           added += 1
         }  
      }
   count += 1
  }
 }
 bigCount+=1
 previousCount+=1
 if bigCount = 10
   break
}
MsgBox, Done
ExitApp
return