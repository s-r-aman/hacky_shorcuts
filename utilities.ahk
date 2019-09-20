; Running apps on only NUMPAD when is not active Combination

; CMDER
!1::
run C:\Users\Aman\Desktop\Fluent Terminal.lnk
return

;Chrome
!2::
  IfWinNotExist, ahk_exe brave.exe
    Run, C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application\brave.exe
  if WinActive("ahk_exe brave.exe")
    Sendinput ^{tab}
  else
    WinActivate ahk_exe brave.exe
return

;Toggle
!3::
  IfWinNotExist, ahk_exe TogglDesktop.exe
    Run, C:\Users\Aman\AppData\Local\TogglDesktop\TogglDesktop.exe
  else 
  {
    GroupAdd, togglians, ahk_exe TogglDesktop.exe
    if WinActive("ahk_exe TogglDesktop.exe")
      GroupActivate, togglians, r
    else
      WinActivate, ahk_exe TogglDesktop.exe
  }  
return

;Station
!4::
  IfWinNotExist, ahk_exe Station.exe
    Run, C:\Users\Aman\AppData\Local\browserX\Station.exe
  if WinActive("ahk_exe Station.exe")
    return
  else
    WinActivate ahk_exe Station.exe
return

;FL Studio
!5::
  IfWinNotExist, ahk_exe Code.exe
    Run, C:\Users\Aman\AppData\Local\Programs\Microsoft VS Code\Code.exe
  else 
  {
    GroupAdd, Coders, ahk_exe Code.exe
    if WinActive("ahk_exe Code.exe")
      GroupActivate, Coders, r
    else
      WinActivate, ahk_exe Code.exe
  }   
return

;Spotify
!6::
  IfWinNotExist, ahk_exe spotify.exe
    Run, C:\Users\Aman\AppData\Roaming\Spotify\Spotify.exe
  if WinActive("ahk_exe spotify.exe")
    return
  else
    WinActivate ahk_exe spotify.exe
return

; MS To-Do
!7::
  run C:\Program Files (x86)\TickTick\TickTick.exe
  return

; Signal
!8::
  IfWinNotExist, ahk_exe Signal.exe
    Run, C:\Users\Aman\AppData\Local\Programs\signal-desktop\Signal.exe
  if WinActive("ahk_exe Signal.exe")
    return
  else
    WinActivate ahk_exe Signal.exe
return

; Discord
!9::
  IfWinNotExist, ahk_exe Discord.exe
    Run, C:\Users\Aman\AppData\Local\Discord\Update.exe --processStart Discord.exe
  if WinActive("ahk_exe Discord.exe")
    return
  else
    WinActivate ahk_exe Discord.exe
return

; Windows Explorer
!`::
IfWinNotExist, ahk_class CabinetWClass
  Run, C:\Users\Aman\Downloads
GroupAdd, explorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
  GroupActivate, explorers, r
else
  WinActivate ahk_class CabinetWClass
Return


;Searching via KeyPirihna and Everything
^+Space::
Send, ^{Space}
Send, Everything: Search
Send, {Enter}
return

;Search on Google
^+g::
{
  Send git add .{Enter}
  sleep 1000
  InputBox, message, Message, Input the Commit Message
  Send git commit -am"%message%"{Enter}
  sleep 1000
  Send git push{Enter}
}
