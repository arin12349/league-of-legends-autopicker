Gui, color, ffffff
Gui, font, s10, arial
Gui, add, groupbox, x10 y10 w180 h80 , Setting
Gui, add, text, x40 y35 w50 h20, Sens:
Gui, add, Edit, x78 y33 w50 h20 vSens,1
Gui, add, text, x30 y60 w50 h20, Hotkey:
Gui, add, Combobox, x78 y58 w50 h60 vkey,F|T
Gui, add, button, x130 y33 w40 h20 g적용1, 적용
Gui, add, button, x130 y60 w40 h20 g적용, 적용
Gui, add, text, x10 y100 w290 h20 c212121, Sens는 0.5 단위로 사용하실수있습니다.
Gui, add, text, x10 y120 w150 h20 c212121,    를 누른후 채팅
Gui, add, text, x10 y140 w150 h20 c212121,    를 누른후 다시게임
Gui, add, text, x10 y120 w20 h20 cRed, F1
Gui, add, text, x10 y140 w20 h20 cRed, F2
Gui, add, text, x270 y99 w40 h20 cRed, (1~20)
Gui, add, text, x180 y120 w90 h20 c212121,    를 눌러 종료
Gui, add, text, x180 y120 w20 h20 cRed, F3
Gui, font, s19 bold, arial
Gui, add, text, x200 y20 w100 h60 , Made by
Gui, font, s24 Bold, arial
Gui, add, text, x200 y50 w100 h40 cRed, ARIN
Gui, show
return

매크로시작=false
return

outmacro:
return

#InstallKeybdHook
hotkey, F1, on
return

적용1:
{
	Gui, submit, nohide
	{
		if sens = 1
		{
			sensa := -27275
		}
		if sens = 1.5
		{	
			sensa := -18185
		}
		if sens = 2
		{
			sensa := -13637
		}
		if sens = 3
		{
			sensa := -9091
		}
		if sens = 3.5
		{
			sensa := -7792
		}
		if sens = 4
		{	
			sensa := -6818
		}
		if sens = 4.5
		{
			sensa := -6060
		}
		if sens = 5
		{
			sensa := -5455
		}
		if sens = 5.5
		{
			sensa := -4959
		}
		if sens = 6
		{	
			sensa := -4545
		}
		if sens = 6.5
		{
			sensa := -4196
		}
		if sens = 7
		{
			sensa := -3896
		}
		if sens = 7.5
		{
			sensa := -3637
		}
		if sens = 8
		{	
			sensa := -3409
		}
		if sens = 8.5
		{
			sensa := -3208
		}
		if sens = 9
		{
			sensa := -3031
		}
		if sens = 9.5
		{
			sensa := -2871
		}
		if sens = 10
		{	
			sensa := -2727
		}
		if sens = 10.5
		{
			sensa := -2597
		}
		if sens = 11
		{
			sensa := -2480
		}
		if sens = 11.5
		{
			sensa := -2372
		}
		if sens = 12
		{	
			sensa := -2273
		}
		if sens = 12.5
		{
			sensa := -2182
		}
		if sens = 13
		{
			sensa := -2098
		}
		if sens = 13.5
		{
			sensa := -2020
		}
		if sens = 14
		{	
			sensa := -1948
		}
		if sens = 14.5
		{
			sensa := -1881
		}
		if sens = 15
		{
			sensa := -1818
		}
		if sens = 15.5
		{
			sensa := -1759
		}
		if sens = 16
		{
			sensa := -1704
		}
		if sens = 16.5
		{
			sensa := -1653
		}
		if sens = 17
		{
			sensa := -1604
		}
		if sens = 17.25
		{
			sensa := -1581
		}
		if sens = 17.5
		{
			sensa := -1559
		}
		if sens = 18
		{	
			sensa := -1515
		}
		if sens = 18.5
		{
			sensa := -1474
		}
		if sens = 19
		{
			sensa := -1436
		}
		if sens = 19.5
		{
			sensa := -1399
		}
		if sens = 20
		{	
			sensa := -1364
		}
	}
}

적용:
{
	Gui,submit,nohide
	global g_start=0
	Hotkey, %key%, keytype, On
}
return

F1::
global g_start=0
hotkey, %key%, keytype, on
return


Keytype:
if g_start=0
{
	Gui, submit, nohide
	{
		if g_start=0
		{
		DllCall("mouse_event", "UInt", 0x01, "UInt", sensa, "UInt", 0)
		}
		else
		{
		Hotkey, %key%, keytype, off
		goto, outmacro
		}
	}
}
else
{
	hotkey, %key%, keytype, off
	goto, outmacro
}
return

F2::
global g_start=1
return


F3::
ExitApp
return