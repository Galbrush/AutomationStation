#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%


FormatTime, nowDate, , yyyy-MM-dd - dddd
FormatTime, nowDateShort, , yyyy-MM-dd
FormatTime, nowTime, , HH:mm:ss
nowCharacter := " - "
strHome := "Home"

; DateTime replacements
;s- string; d-date; t - time; h - home
::;sd::
SendInput, %nowDate%
return
::;sdt:: 
SendInput, %nowDate%
SendInput, %nowCharacter%
SendInput, %nowTime%
return
::;sdth::
SendInput, %nowDate%
SendInput, %nowCharacter%
SendInput, %nowTime%
SendInput, %nowCharacter%
SendInput, %strHome%

; Signature replacements


