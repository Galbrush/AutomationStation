#SingleInstance  Force
SendMode "Input"
SetWorkingDir A_ScriptDir

SetWinDelay -1
CoordMode "Mouse", "Screen"

Alt & LButton::
 {
    MouseGetPos &x_start, &y_start, &sel_window
    MinMax := WinGetMinMax("ahk_id  " sel_window) 
    if MinMax = 0
        SetTimer MyFunc, 1
    return

    MyFunc()
    {
        MouseGetPos &x_cur, &y_cur
        WinGetPos &sel_window_x, &sel_window_y,,,"ahk_id " sel_window
        WinMove sel_window_x + x_cur - x_start, sel_window_y + y_cur - y_start, ,,"ahk_id " sel_window

        x_start := x_cur
        y_start := y_cur

        state := GetKeyState("LButton", "P")
        if !state
            {
            SetTimer MyFunc, 0 
            return  
            } 

        return
    
    }

}