@Echo off 
title ����С����v1.6 by ����  
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
rem ɾ����������վ��
Echo ============================================== 
Echo %Date% %Time% ����IE�����������վ��... 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains" /f
START /WAIT REGEDIT /S "script\setting.reg"
Echo ============================================== 
Echo %Date% %Time% �����ղؼ����ݵ������... 
if exist %userprofile%\Favorites (  
	 rd /s /q %userprofile%\Favorites
	 xcopy Favorites\*.* %userprofile%\Favorites\ /s /e /c /y /h /r
) else (
     if exist D:\Favorites (  
     	 rd /s /q D:\Favorites
		 xcopy Favorites\*.* D:\Favorites\ /s /e /c /y /h /r
     ) else (
	 	 xcopy Favorites\*.* %userprofile%\Favorites\ /s /e /c /y /h /r
	 )
)
Echo ============================================== 
Echo %Date% %Time% ɾ�������ű�... 
if exist %windir%\system32\GroupPolicy\User\Scripts\Logon\UserConf.bat (
	DEL %windir%\system32\GroupPolicy\User\Scripts\Logon\UserConf.*
)
Echo ============================================== 
Echo %Date% %Time% ����IE�����... 
taskkill /f /t /im iexplore.exe 2>nul

Echo ==============================================
Echo %Date% %Time% ��������Ŀ¼... 
mklink /D c:\users\%username%\Desktop\����İ칫���ֿ� \\10.100.17.87\����İ칫�ֿ�
mklink /D c:\users\%username%\Desktop\������������ֿ� \\172.100.17.187\�������ʱ�ֿ�

Echo ����֤ҵ��ϵͳ�Ƿ����������... 
Echo �������⣬����ϵ���� 18627336759
Pause > Nul 
Exit



