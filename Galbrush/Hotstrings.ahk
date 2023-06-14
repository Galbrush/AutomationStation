
#SingleInstance  Force
SendMode "Input"
SetWorkingDir A_ScriptDir


nowDate := FormatTime(,"yyyy-MM-dd - dddd")
nowDateShort := FormatTime(, "yyyy-MM-dd") 
nowTime := FormatTime(, "HH:mm:ss")
nowCharacter := " - "
strHome := "Home"

; DateTime replacements
;s- string; d-date; t - time; h - home
::;sd::
{
  SendInput nowDate
  return  
}
::;sdt::
{
    SendInput nowDate
    SendInput nowCharacter
    SendInput nowTime
    return
}
::;sdth::
{
    SendInput nowDate
    SendInput nowCharacter
    SendInput nowTime
    SendInput nowCharacter
    SendInput strHome
    return
}

; Signature replacements

;Git push test line
