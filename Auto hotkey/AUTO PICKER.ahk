
#SingleInstance force
#InstallKeybdHook

Gui, font, s9, arial
Gui, color, cbe5ff
Gui, add, GroupBox, x20 y10 w300 h145 +center, Auto Picker ; ����
Gui, add, Text, x35 y40 w120 h15, Champion :
Gui, add, DropDownList, x110 y35 w100 h100 vpick, ����|������|���÷�ũ|�׶󰡽�|�׷��̺���|����|����|������|��ƿ����|����|����|�ϴ޸�|�ٸ��콺|���ֳ̾�|�巹�̺�|������|���ӽ�|����|����|������|������|������|����|��þ�|���|�����|�� ��|����|������|������ ��|����ī��|������|������Ʈ|��ī����|�𸣰���|���� �ڻ�|�̽� ����|�ٵ�|�ٷ罺|����|���̰�|����|������|��������|����|�귣��|����̸�|����ũ��ũ|���丣|�ǻ�|���̿�|����|���־ƴ�|�ҳ�|�Ҷ�ī|��|���ٳ�|������|��ī��|�ú�|�� ¥��|�ŵ��|������|������|�Ƹ�|�ƹ���|�ƿ췼���� ��|���̹�|������|��Į��|��Ʈ�Ͻ�|�˸���Ÿ|�ִ�|�ִϺ��|�ֽ�|�߽���|����|������|����|�����Ƴ�|�ö���|�丯|���|�츣��|����|�̷�����|�̺�|�����|�϶����|�ڸ��� 4��|���̶�|��ũ|�ܳ�|�轺|����|����|���̽�|����|��|������|¡ũ��|�ʰ���|ī����|ī��|ī���|ī����|ī�ÿ����|ī����|īŸ����|Į����Ÿ|�ɳ�|����Ʋ��|����|�ڱ׸�|�ڸ�Ű|��|Ŭ����|Ų�巹��|Ÿ��|Ż��|Ż����|Ž ��ġ|Ʈ����|Ʈ����Ÿ��|Ʈ���ٹ̾�|Ʈ����Ƽ�� ����Ʈ|Ʈ��ġ|Ƽ��|���׿�|�ǵ齺ƽ|�ǿ���|����|���̸ӵ���|��ī��
Gui, add, DropDownList, x110 y60 w100 h100 vlane, ��|����|����|����|����
Gui, add, Text, x35 y65 w130 h15, Lane         :
Gui, add, button, x210 y35 w40 h20 , ����
Gui, add, button, x210 y60 w40 h20 , ����
Gui, show
Gui, add, Text, x250 y120 w50 h40, Made by Arin
Return

F9::
ExitApp

F11::
    {
	Gui, submit, nohide
	Gui, destroy
	Loop
	{
		
		{
			ImageSearch, cX, cY, 0,0, A_ScreenWidth, A_ScreenHeight, *70 �˻�.bmp
			if Errorlevel = 0
			{
				MouseMove, %cX%, %cY%
				sleep 10
				Mouseclick, left
				sleep 10
				send %pick%    ;�˻�
				Mousemove, 350, 130
				sleep 10
				Mouseclick, left ;ĳ���ͼ���
				sleep 280
				mousemove, 600, 580
				sleep 10
				mouseclick, left ; �غ�Ϸ�
				sleep 280
				mousemove, 200, 700
				sleep 10
				mouseclick, left
				send %lane% {enter}
				sleep 280
			}
			{
				ExitApp
			}
		}
	}
return
}
