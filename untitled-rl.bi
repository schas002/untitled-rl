''''''''''''
' Contents '
''''''''''''
' Utilities - Dependencies  #utilitiesDepends
' Person Type               #Person
' Utilities - Independent   #utilitiesIndependent

''''''''''''''''''''''''''''
' Utilities - Dependencies '
''''''''''''''''''''''''''''
' Which MUST be located in a specific location into the header. #utilitiesDepends

' Thanks FreeBASIC, for not having a normal bool type :|
Enum Bool
  False = 0
  True  = 1
End Enum

'''''''''''''''
' Person Type '
'''''''''''''''
' Not necessarily a human, but a thing that can be interacted with like a human. #Person
Type Person
  x as Integer
  y as Integer
  z as Integer
  char as String * 1
  fgColor as Integer
  bgColor as Integer

  Declare Function display() as Bool
  Declare Function disappear() as Bool

  Declare Function moveX(modifier as Integer) as Bool
  Declare Function moveY(modifier as Integer) as Bool
End Type

Function Person.display() as Bool
  Locate this.y, this.x
  Color this.fgColor, this.bgColor
  Print this.char;
  Return True
End Function

Function Person.disappear() as Bool
  Locate this.y, this.x
  Print " ";
  Return True
End Function

Function Person.moveX(modifier as Integer) as Bool
  If this.x + modifier < 1 Then
    Return False
  Else
    this.x += modifier
    Return True
  End If
End Function

Function Person.moveY(modifier as Integer) as Bool
  If this.y + modifier < 1 Then
    Return False
  Else
    this.y += modifier
    Return True
  End If
End Function

'''''''''''''''''''''''''''
' Utilities - Independent '
'''''''''''''''''''''''''''
' Which may be located in any location into the header. #utilitiesIndependent

Const BLACK as Integer  = 0
Const BLUE as Integer   = 1
Const GREEN as Integer  = 2
Const CYAN as Integer   = 3
Const RED as Integer    = 4
Const PURPLE as Integer = 5
Const YELLOW as Integer = 6
Const WHITE as Integer  = 7

Const BRIGHT as Integer = 8

#define EXTCHAR Chr(255)
