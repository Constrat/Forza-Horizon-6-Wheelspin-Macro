; ╔═════════════════════════════════════════╗
; ║        MHI - FH6 Wheelspin Macro		║
; ║        Cyber Noir Edition v1.5.0        ║
; ╚═════════════════════════════════════════╝

#Requires AutoHotkey v2.0

#MaxThreadsPerHotkey 2
#SingleInstance Force

#Include Lib\OCR.ahk

#Include modules\Config.ahk
#Include modules\UI.ahk
#Include modules\Engine.ahk
#Include modules\Task_Race.ahk
#Include modules\Task_Buy.ahk
#Include modules\Task_Unlock.ahk
#Include modules\Task_Spin.ahk

TraySetIcon(A_ScriptDir "\assets\icon.ico")

; Construct and display the visual interface
BuildGui()

; ══════════════════════════════════════════════
;  GAME-FOCUS BOUNDED HOTKEYS
; ══════════════════════════════════════════════
#HotIf WinActive(GameTitle)

\::StartRace()
[::StartBuy()
]::StartUnlock()
/::ToggleAll()
=::StartSpin()
F12::Reload()
`::TogglePause()
^+c::GetCoordsColor()

#HotIf