;^ = Ctrl, ! = ALT, # = Win
#Include %A_ScriptDir%
;autoexecute section
preventScreenSaverVar := false ; Boolean for Screen-saver prevention label (subroutine). True = running/enabled.
SetTimer preventScreenSaver, 60000 ; Screen-saver launch prevention label (subroutine), checks every 1 minute

^5::
{
global preventScreenSaverVar := !preventScreenSaverVar
if (preventScreenSaverVar) 
    {
    TrayTip "Screen Saver Prevention Enabled", "Jiggler", 17
}
else { 
    TrayTip "Screen Saver Prevention, Disabled", "Jiggler", 17
}
return
}

;ScreenSaver launch prevention subroutine
preventScreenSaver()
{
    global preventScreenSaverVar
    if (preventScreenSaverVar) {
        MouseMove 1, 0, 1, "R"  ;Move the mouse one pixel to the right
        MouseMove -1, 0, 1, "R" ;Move the mouse back one pixel
    }
    return
}

