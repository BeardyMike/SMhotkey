/*
This is the SOUNDMARKETING Account Manager Hotkey application
*/

#NoEnv  						; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  				; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\AHK\ 			; Ensures a consistent starting directory.
#SingleInstance force 			; Prevents mulitple instances from being run at the same time.

#Include C:\AHK\functions.func 	; this is file that contains all the functions

; VARIABLES
FormatTime, CurrentDateTime,, ddMMyy 		; Prepare the DATE as DDMMYY
IniRead, Initials, data.dat, Initials, USER	; Sets the Users Initals
IniRead, Text1, data.dat, UserText, Text1	; prepares TextBank1 for use
IniRead, Text2, data.dat, UserText, Text2	; prepares TextBank2 for use
IniRead, Text3, data.dat, UserText, Text3	; prepares TextBank3 for use
USERDate = %Initials%%CurrentDateTime%		; example MB010170

SplashImage = splash.png ; Locate the image
SplashImageGUI(SplashImage, "Center", "Center", 2000, true) ; Show the image for 2000ms

#Persistent
TrayMenu()
return

Reeload:
Reload
return

ButtonExit:
ExitApp
return

HELPFUNCTION:
HelpFunction()
return

AboutPage:
AboutPage()
return

ButtonOK: 			; No Key Combo					- This is the code for the OK button
Gui, Destroy
return

+^$F1::   			; Ctrl+Shift+F1 				- Saves text into TextBank1
TextBank1()
return

+^$F2::   			; Ctrl+Shift+F2 				- Saves text into TextBank2
TextBank2()
return

+^$F3::   			; Ctrl+Shift+F3 				- Saves text into TextBank3
TextBank3()
return

+^$MButton::		; Ctrl+Shift+MiddleMouseClick 	- Show Pixel Colour
GetPixelColour()
return

^!v::				; Ctrl+Alt+V 					- VoiceArtist Tab'n'Paste
VATabnPaste()
return

+^$F12::   			; Ctrl+Shift+F12 				- Change the Initals
USERinitials()
return

+^c::				; Ctrl+Shift+C 					- Triple click and copy to clipboard
TripleCopy()
return

+^v::				; Ctrl+Shift+V 					- Click and then paste under mouse cursor
UltraPaste()
return

#z::				; Win+Z 						- Initials and the date e.g. MB010120
InitialsDate()
return

#q::				; Win+Q							- Mouse over the pending in the GM Calendar then press Win+Q to enter TextBank1 into the pending field and change the pending colour to RED
GoldMinePending()
return




