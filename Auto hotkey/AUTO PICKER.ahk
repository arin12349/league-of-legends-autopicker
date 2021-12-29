
#SingleInstance force
#InstallKeybdHook

Gui, font, s9, arial
Gui, color, cbe5ff
Gui, add, GroupBox, x20 y10 w300 h145 +center, Auto Picker ; 제목
Gui, add, Text, x35 y40 w120 h15, Champion :
Gui, add, DropDownList, x110 y35 w100 h100 vpick, 가렌|갈리오|갱플랭크|그라가스|그레이브즈|나르|나미|나서스|노틸러스|녹턴|누누|니달리|다리우스|다이애나|드레이븐|라이즈|람머스|럭스|럼블|레넥톤|레오나|렉사이|렝가|루시안|룰루|르블랑|리 신|리븐|리산드라|마스터 이|마오카이|말자하|말파이트|모데카이저|모르가나|문도 박사|미스 포츈|바드|바루스|바이|베이가|베인|벨코즈|볼리베어|브라움|브랜드|블라디미르|블리츠크랭크|빅토르|뽀삐|사이온|샤코|세주아니|소나|소라카|쉔|쉬바나|스웨인|스카너|시비르|신 짜오|신드라|신지드|쓰레쉬|아리|아무무|아우렐리온 솔|아이번|아지르|아칼리|아트록스|알리스타|애니|애니비아|애쉬|야스오|에코|엘리스|오공|오리아나|올라프|요릭|우디르|우르곳|워윅|이렐리아|이블린|이즈리얼|일라오이|자르반 4세|자이라|자크|잔나|잭스|제드|제라스|제이스|직스|진|질리언|징크스|초가스|카르마|카밀|카사딘|카서스|카시오페아|카직스|카타리나|칼리스타|케넨|케이틀린|케일|코그모|코르키|퀸|클레드|킨드레드|타릭|탈론|탈리야|탐 켄치|트런들|트리스타나|트린다미어|트위스티드 페이트|트위치|티모|판테온|피들스틱|피오라|피즈|하이머딩거|헤카림
Gui, add, DropDownList, x110 y60 w100 h100 vlane, ㅌ|ㅁㄷ|ㅈㄱ|ㅅㅍ|ㅇㄷ
Gui, add, Text, x35 y65 w130 h15, Lane         :
Gui, add, button, x210 y35 w40 h20 , 선택
Gui, add, button, x210 y60 w40 h20 , 선택
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
			ImageSearch, cX, cY, 0,0, A_ScreenWidth, A_ScreenHeight, *70 검색.bmp
			if Errorlevel = 0
			{
				MouseMove, %cX%, %cY%
				sleep 10
				Mouseclick, left
				sleep 10
				send %pick%    ;검색
				Mousemove, 350, 130
				sleep 10
				Mouseclick, left ;캐릭터선택
				sleep 280
				mousemove, 600, 580
				sleep 10
				mouseclick, left ; 준비완료
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
