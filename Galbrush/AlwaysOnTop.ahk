
#SingleInstance  Force
SendMode "Input"
SetWorkingDir A_ScriptDir

;Always on top, Alt+t

!t::
{
    WinSetAlwaysOnTop -1, "A"
}
return
