#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

!#j::
loop
{
first := false
PixelSearch, Px, Py, 0, 0, 1950, 1050, 0x3C5B7F, 0, Fast
if (not ErrorLevel)
{
  first = true
}
second := false
PixelSearch, PxA, PyB, 0, 0, 1950, 1050, 0x5B93B0, 0, Fast
if (not ErrorLevel)
  {
    second = true
  }
if (first and second)
  {
  if (((PxA - Px) = 1) and ((PyB - Py) = 1))
    {
      MsgBox, %Px%, %Py%, and %PxA%, %PyB%
      MouseMove, %Px%, %Py%
      break
    }
    else
    {
      MsgBox, Almost, %Px%, %Py%, and %PxA%, %PyB%
      break
    }
  }
}
return