@Echo off 
title ����С����v1.2 by ����  
color 2f                                                     
Echo 666666666            6666666           6666666    
Echo 66666666666         666666666         6666666666  
Echo 666    6666        6666   6666       6666   6666  
Echo 666     666       6666     6666      666     6666 
Echo 666     666       666       666      666          
Echo 666    6666      6666                6666         
Echo 6666666666       6666                 6666666     
Echo 66666666666      6666                   6666666   
Echo 666     6666     6666                      66666  
Echo 666      666     6666                        6666 
Echo 666      666      666       666     6666      666 
Echo 666      666      6666     6666     6666      666 
Echo 666     6666       6666   6666       6666    6666 
Echo 66666666666         6666666666        6666666666  
Echo 6666666666           6666666           6666666    
Echo ============================================== 
Echo %Date% %Time% ��ʼ����IE����վ��... 
rem ������վ��ͨ�����Ч������
rem *://*.baidu.com
rem *://192.168.1-99.*
rem ������վ��ͨ�����Ч������
rem ftp://*
rem http://www.*.com
rem ɾ����������վ��
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains" /f
> "%Temp%.\DefOpen.reg" ECHO Windows Registry Editor Version 5.00
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Ranges1]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO ":Range"="192.168.*.*"
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Ranges2]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO ":Range"="172.100.*.*"
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Ranges3]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO ":Range"="172.18.*.*"
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Ranges4]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO ":Range"="172.16.*.*"
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Ranges5]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO ":Range"="9.136.*.*"
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges\Ranges6]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO ":Range"="110.3.*.*"
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\mis.bcs]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\prod.bcs]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\zzfc.com]
>>"%Temp%.\DefOpen.reg" ECHO "*"=dword:00000002
>>"%Temp%.\DefOpen.reg" ECHO.
START /WAIT REGEDIT /S "%Temp%.\DefOpen.reg"
START /WAIT REGEDIT /S "%Temp%.\DefOpen.reg"
DEL "%Temp%.\DefOpen.reg"

Echo ============================================== 
Echo %Date% %Time% ��ʼ����IE������... 
rem IE�����Բ�֧��ͨ�������
rem ��Ҫ��Ӽ����Ե���ַ�У�
rem 192.168.1.16
rem 192.168.1.101
rem 192.168.1.146
rem 192.168.1.161
rem 192.168.3.34
rem 192.168.3.46
rem 192.168.2.55
rem 192.168.1.21
rem 192.168.1.210
rem 172.16.1.146
rem 172.16.1.182
rem 172.16.1.183
rem 172.16.1.184
rem 172.16.2.167
rem 9.136.47.12


> "%Temp%.\DefOpen.reg" ECHO Windows Registry Editor Version 5.00
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\BrowserEmulation]
>>"%Temp%.\DefOpen.reg" ECHO "IntranetCompatibilityMode"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "MSCompatibilityMode"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "AllSitesCompatibilityMode"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\BrowserEmulation\ClearableListData]
>>"%Temp%.\DefOpen.reg" ECHO "UserFilter"=hex:41,1f,00,00,53,08,ad,ba,0e,00,00,00,5e,02,00,00,01,00,00,00,\
>>"%Temp%.\DefOpen.reg" ECHO 0e,00,00,00,0c,00,00,00,42,3a,ec,80,ea,d3,d4,01,01,00,00,00,0d,00,31,00,39,\
>>"%Temp%.\DefOpen.reg" ECHO 00,32,00,2e,00,31,00,36,00,38,00,2e,00,31,00,2e,00,31,00,30,00,31,00,0c,00,\
>>"%Temp%.\DefOpen.reg" ECHO 00,00,eb,b6,e6,85,ea,d3,d4,01,01,00,00,00,0c,00,31,00,39,00,32,00,2e,00,31,\
>>"%Temp%.\DefOpen.reg" ECHO 00,36,00,38,00,2e,00,31,00,2e,00,31,00,36,00,0c,00,00,00,36,d7,32,8b,ea,d3,\
>>"%Temp%.\DefOpen.reg" ECHO d4,01,01,00,00,00,0d,00,31,00,39,00,32,00,2e,00,31,00,36,00,38,00,2e,00,31,\
>>"%Temp%.\DefOpen.reg" ECHO 00,2e,00,31,00,34,00,36,00,0c,00,00,00,f0,f0,ca,8d,ea,d3,d4,01,01,00,00,00,\
>>"%Temp%.\DefOpen.reg" ECHO 0d,00,31,00,39,00,32,00,2e,00,31,00,36,00,38,00,2e,00,31,00,2e,00,31,00,36,\
>>"%Temp%.\DefOpen.reg" ECHO 00,31,00,0c,00,00,00,d5,07,62,91,ea,d3,d4,01,01,00,00,00,0c,00,31,00,39,00,\
>>"%Temp%.\DefOpen.reg" ECHO 32,00,2e,00,31,00,36,00,38,00,2e,00,31,00,2e,00,32,00,31,00,0c,00,00,00,d8,\
>>"%Temp%.\DefOpen.reg" ECHO 63,96,94,ea,d3,d4,01,01,00,00,00,0d,00,31,00,39,00,32,00,2e,00,31,00,36,00,\
>>"%Temp%.\DefOpen.reg" ECHO 38,00,2e,00,31,00,2e,00,32,00,31,00,30,00,0c,00,00,00,ca,5e,31,9c,ea,d3,d4,\
>>"%Temp%.\DefOpen.reg" ECHO 01,01,00,00,00,0c,00,31,00,39,00,32,00,2e,00,31,00,36,00,38,00,2e,00,33,00,\
>>"%Temp%.\DefOpen.reg" ECHO 2e,00,33,00,34,00,0c,00,00,00,ae,81,a6,a3,ea,d3,d4,01,01,00,00,00,0c,00,31,\
>>"%Temp%.\DefOpen.reg" ECHO 00,39,00,32,00,2e,00,31,00,36,00,38,00,2e,00,32,00,2e,00,35,00,35,00,0c,00,\
>>"%Temp%.\DefOpen.reg" ECHO 00,00,66,90,4f,a9,ea,d3,d4,01,01,00,00,00,0c,00,31,00,37,00,32,00,2e,00,31,\
>>"%Temp%.\DefOpen.reg" ECHO 00,36,00,2e,00,31,00,2e,00,31,00,34,00,36,00,0c,00,00,00,32,99,46,af,ea,d3,\
>>"%Temp%.\DefOpen.reg" ECHO d4,01,01,00,00,00,0c,00,31,00,37,00,32,00,2e,00,31,00,36,00,2e,00,31,00,2e,\
>>"%Temp%.\DefOpen.reg" ECHO 00,31,00,38,00,32,00,0c,00,00,00,13,c9,a9,b7,ea,d3,d4,01,01,00,00,00,0c,00,\
>>"%Temp%.\DefOpen.reg" ECHO 31,00,37,00,32,00,2e,00,31,00,36,00,2e,00,31,00,2e,00,31,00,38,00,33,00,0c,\
>>"%Temp%.\DefOpen.reg" ECHO 00,00,00,a1,4f,e1,bc,ea,d3,d4,01,01,00,00,00,0c,00,31,00,37,00,32,00,2e,00,\
>>"%Temp%.\DefOpen.reg" ECHO 31,00,36,00,2e,00,31,00,2e,00,31,00,38,00,34,00,0c,00,00,00,ac,1e,83,c6,ea,\
>>"%Temp%.\DefOpen.reg" ECHO d3,d4,01,01,00,00,00,0b,00,39,00,2e,00,31,00,33,00,36,00,2e,00,34,00,37,00,\
>>"%Temp%.\DefOpen.reg" ECHO 2e,00,31,00,32,00,0c,00,00,00,0f,e8,01,dc,ea,d3,d4,01,01,00,00,00,0c,00,31,\
>>"%Temp%.\DefOpen.reg" ECHO 00,37,00,32,00,2e,00,31,00,36,00,2e,00,32,00,2e,00,31,00,36,00,37,00
>>"%Temp%.\DefOpen.reg" ECHO.
START /WAIT REGEDIT /S "%Temp%.\DefOpen.reg"
START /WAIT REGEDIT /S "%Temp%.\DefOpen.reg"
DEL "%Temp%.\DefOpen.reg"


rem HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones
rem 0        �ҵĵ���
rem 1        ���� Intranet ����
rem 2        �����ε�վ������
rem 3        Internet ����
rem 4        �����Ƶ�վ������
rem ������������������ÿ�� DWORD ֵ���� 0��1 �� 3��ͨ��������Ϊ 0 �򽫾����������Ϊ��������Ϊ 1 ���³�����ʾ������Ϊ 3 ���ִֹ�о������
rem 1001     ActiveX �ؼ��Ͳ����������ǩ��� ActiveX �ؼ� 
rem 1004     ActiveX �ؼ��Ͳ��������δǩ��� ActiveX �ؼ� 
rem 1200     ActiveX �ؼ��Ͳ�������� ActiveX �ؼ��Ͳ�� 
rem 1201     ActiveX �ؼ��Ͳ������û�б��Ϊ�ɰ�ȫִ�нű��� ActiveX �ؼ����г�ʼ���ͽű����� 
rem 1206     ���������� Internet Explorer Web ������ؼ��Ľű���д ^ 
rem 1207     ���� # 1208     ActiveX �ؼ��Ͳ����������ǰδʹ�õ� ActiveX �ؼ���û����ʾ����������� ^ 
rem 1209     ActiveX �ؼ��Ͳ��������ű�С���� 
rem 120A     ActiveX �ؼ��Ͳ����ActiveX �ؼ��Ͳ��������ÿվ�㣨������ActiveX ���� 
rem 120B     ActiveX �ؼ��Ͳ��������ÿվ�㣨������ActiveX ���� 
rem 1400     �ű���д����ű���д 
rem 1402     �ű���д��Java С����ű���д 
rem 1405     ActiveX �ؼ��Ͳ�����Ա��Ϊ�ɰ�ȫִ�нű��� ActiveX �ؼ�ִ�нű� 
rem 1406     �����������������Դ 
rem 1407     �ű��������̼�������� 
rem 1408     ���� # 
rem 1601     �������ύδ���ܵı����� 
rem 1604     ���أ��������� 1605     ���� Java # 
rem 1606     �������û����ݳ־��� ^ 
rem 1607     ��������������ӿ�� 
rem 1608     ���������� META REFRESH * ^ 
rem 1609     ��������ʾ������� * 
rem 160A     �������ڽ��ļ����ص�������ʱ��������Ŀ¼·�� ^ 
rem 1800     ������������Ŀ�İ�װ 
rem 1802     �������ϷŻ��ƺ�ճ���ļ� 
rem 1803     ���أ��ļ����� ^ 
rem 1804     �������� IFRAME ������������ļ� 
rem 1805     �� Web ��ͼ������������ļ� # 
rem 1806     ����������Ӧ�ó���Ͳ���ȫ�ļ� 
rem 1807     ���� ** # 1808     ���� ** # 
rem 1809     ������ʹ�õ���������ֹ���� ** ^ 
rem 180A     ���� # 180B     ���� # 180C     ���� # 180D     ���� # 
rem 1A00     �û������֤����¼ 
rem 1A02     ���������ϴ洢�ĳ־� cookie # 
rem 1A03     ����ÿ�Ự cookie��δ�洢�� # 
rem 1A04     ������û��֤���ֻ��һ��֤��ʱ����ʾ���пͻ�֤��ѡ�� * ^ 
rem 1A05     ����������־� cookie * 
rem 1A06     ����������Ự cookie * 
rem 1A10     ��˽���� * 1C00     Java Ȩ�� # 
rem 1E05     ���������Ƶ��Ȩ�� 1F00     ���� ** # 
rem 2000     ActiveX �ؼ��Ͳ���������ƺͽű���Ϊ 
rem 2001     ���� NET Framework �����������δ�� Authenticode ǩ������� 
rem 2004     ���� NET Framework �����������δ�� Authenticode ǩ�������
rem  2100     �������������ݴ��ļ��������ǻ����ļ���չ�� ** ^ 
rem 2101     �������ڵ���Ȩ Web ���������е���վ���Ե����������� ** 
rem 2102     �����������ɽű���ʼ���Ĵ��ڣ�û�д�С��λ������ ** ^ 
rem 2103     �ű�������ͨ���ű�����״̬�� ^ 
rem 2104     ������������վ��û�е�ַ��״̬���Ĵ��� ^ 
rem 2105     �ű���������վʹ�ýű�������ʾ��Ϣ ^ 
rem 2200     ���أ��ļ������Զ���ʾ ** ^ 
rem 2201     ActiveX �ؼ��Ͳ����ActiveX �ؼ��Զ���ʾ ** ^ 
rem 2300     ������������ҳΪ�����ʹ�������Ƶ�Э�� ** 
rem 2301     ������ʹ�õ�����վɸѡ�� ^ 2400     .NET Framework��XAML �����Ӧ�ó��� 
rem 2401     .NET Framework��XPS �ĵ� 2402     .NET Framework����ɢ XAML 
rem 2500     �򿪱���ģʽ [�� Vista ����] # 2600     ���� .NET Framework ���� ^
Echo ============================================== 
Echo %Date% %Time% ��ʼ����IEѡ��... 
> "%Temp%.\DefOpen.reg" ECHO Windows Registry Editor Version 5.00
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2]
>>"%Temp%.\DefOpen.reg" ECHO "1001"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1004"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1200"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1201"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1207"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1405"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1407"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1607"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1802"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "1803"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "2200"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "2201"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\New Windows]
>>"%Temp%.\DefOpen.reg" ECHO "PopupMgr"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
>>"%Temp%.\DefOpen.reg" ECHO "WarnonBadCertRecving"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO "CertificateRevocation"=dword:00000000
>>"%Temp%.\DefOpen.reg" ECHO.
>>"%Temp%.\DefOpen.reg" ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download]
>>"%Temp%.\DefOpen.reg" ECHO "RunInvalidSignatures"=dword:00000001
>>"%Temp%.\DefOpen.reg" ECHO.
START /WAIT REGEDIT /S "%Temp%.\DefOpen.reg"
START /WAIT REGEDIT /S "%Temp%.\DefOpen.reg"
DEL "%Temp%.\DefOpen.reg"

Echo ============================================== 
Echo %Date% %Time% �����ղؼ����ݵ������... 
if exist %userprofile%\Favorites (  
	 rd /s /q %userprofile%\Favorites
	 xcopy Favorites\*.* %userprofile%\Favorites\ /s /e /c /y /h /r
)
else(
     if exist D:\Favorites (  
     	 rd /s /q D:\Favorites
		 xcopy Favorites\*.* D:\Favorites\ /s /e /c /y /h /r
     )
	 else{
	 	 xcopy Favorites\*.* %userprofile%\Favorites\ /s /e /c /y /h /r
	 )
)


Echo ============================================== 
Echo %Date% %Time% ɾ�������ű�... 
DEL %windir%\system32\GroupPolicy\User\Scripts\Logon\UserConf.*

Echo ============================================== 
Echo %Date% %Time% ����IE�����... 
taskkill /f /t /im iexplore.exe 2>nul
Echo ����֤ҵ��ϵͳ�Ƿ����������... 
Echo �������⣬����ϵ���� 18627336759
Pause > Nul 
Exit



