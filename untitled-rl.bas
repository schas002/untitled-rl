#include "untitled-rl.bi"

Cls

' Nanananananananana...
Dim AtMan as Person
AtMan.x = Pos()
AtMan.y = CsrLin()
AtMan.z = 1 ' don't matter
AtMan.char = "@"
AtMan.fgColor = WHITE or BRIGHT
AtMan.bgColor = BLACK

AtMan.display()

Dim w as Integer
w = Width()

Do
  Dim k as String = Inkey$

  Select Case k
    Case "q", "Q", Chr(27):
      Exit Do
    Case "w", "W", "8", "k", "K", EXTCHAR & "H":
      AtMan.disappear()
      AtMan.moveY(-1)
      AtMan.display()
    Case "a", "A", "4", "h", "H", EXTCHAR & "K":
      AtMan.disappear()
      AtMan.moveX(-1)
      AtMan.display()
    Case "s", "S", "2", "j", "J", EXTCHAR & "P":
      If AtMan.y < HiWord(w) Then
        AtMan.disappear()
        AtMan.moveY(1)
        AtMan.display()
      End If
    Case "d", "D", "6", "l", "L", EXTCHAR & "M":
      If AtMan.x < LoWord(w) Then
        AtMan.disappear()
        AtMan.moveX(1)
        AtMan.display()
      End If
  End Select

  Sleep 1, 1
Loop

Color WHITE, BLACK: Cls
End
