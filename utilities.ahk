; Running apps on only NUMPAD when is not active Combination

; CMDER
NumpadEnd::
!1::
  IfWinNotExist, ahk_exe ConEmu64.exe
    Run, C:\Users\Aman\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Cmder.lnk
  else 
  {
    GroupAdd, commanders, ahk_class VirtualConsoleClass
    if WinActive("ahk_class VirtualConsoleClass")
      GroupActivate, commanders, r
    else
      WinActivate, ahk_class VirtualConsoleClass
  }  
return

;Chrome
NumpadDown::
!2::
  IfWinNotExist, ahk_exe chrome.exe
    Run, chrome.exe
  if WinActive("ahk_exe chrome.exe")
    Sendinput ^{tab}
  else
    WinActivate ahk_exe chrome.exe
return

;Typora
NumpadPgdn::
!3::
  IfWinNotExist, ahk_exe Typora.exe
    Run, Typora.exe
  else 
  {
    GroupAdd, typorians, ahk_exe Typora.exe
    if WinActive("ahk_exe Typora.exe")
      GroupActivate, typorians, r
    else
      WinActivate, ahk_exe Typora.exe
  }  
return

;Notion
NumpadLeft::
!4::
Run, C:\Users\Aman\AppData\Local\Programs\Notion\Notion.exe
return

;FL Studio
NumpadClear::
!5::
  IfWinNotExist, ahk_exe FL64.exe
    Run, C:\Program Files (x86)\Image-Line\FL Studio 20\FL64.exe
  else 
  {
    GroupAdd, fruity, ahk_exe FL64.exe
    if WinActive("ahk_exe FL64.exe")
      GroupActivate, fruity, r
    else
      WinActivate, ahk_exe FL64.exe
  }   
return

;Spotify
!6::
NumpadRight::
  IfWinNotExist, ahk_exe spotify.exe
    Run, spotify.exe
  if WinActive("ahk_exe spotify.exe")
    return
  else
    WinActivate ahk_exe spotify.exe
return

; MS To-Do
NumpadHome::
!7::
  run C:\Users\Aman\Desktop\Microsoft To-Do.lnk
  return

; Downloads folder
NumpadUp::
  run, C:\Users\Aman\Downloads
  Return

; Windows Explorer
!`::
IfWinNotExist, ahk_class CabinetWClass
  Run, explorer.exe
GroupAdd, explorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
  GroupActivate, explorers, r
else
  WinActivate ahk_class CabinetWClass
Return

+Space::
Send, ^{Space}
Send, Everything: Search
Send, {Enter}
return

;Search on Google

^+c::
{
  Send, ^c
  Sleep 50
  Run, http://www.google.com/search?q=%clipboard%
  Return
}
