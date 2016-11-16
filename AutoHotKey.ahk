;Global hot key settings for AJ

Numlock::
 ;To disable NumLock Key.
  ;SetNumLockState, Off
  TrayTip, NumLock Disabled.
  Return

^#L::
 ;line selection
  Send, {End}+{Home}
  ;Send, {Del}
  Return

#s::
 ;Show the AHK menu (just menu)
  Menu, Tray, Show
  ;Menu, Tray, Click, 3
  Return

#f::
 ;Google. and etc
  SetTitleMatchMode, 2
  CoordMode, Mouse, Client
  WinMove, A, , , 0
  If WinActive("Google")
  {
    Send, {Home}
    Sleep, 200
    Click, 167, 156
    Send, ^a
  }
  
  Return

#a::
 ;GDrive file renaming.
  Send, {Up}{Up}{Up}{Up}{Up}{Up}
  Sleep, 300
  Send, {Enter}
  Return

#z::
 ;ctrl^, alt!, shift+
  ;Send, {F2}
  ;Sleep, 300

  Return

#0::
 ;never run this. example codes
 ;ctrl^, alt!, shift+

  WinGetActiveTitle, zTitle
  WinGetPos, zX, zY, zWidth, zHeight, A
  SplashTextOn, 400, 300, z, WH:`n%zWidth% %zHeight%
  zY -= 100
  Sleep, 1000
  SplashTextOff
