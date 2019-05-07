@Echo off 
title 长行小工具v1.6 by 符凯  
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
rem 删除现有信任站点
Echo ============================================== 
Echo %Date% %Time% 设置IE兼容性与可信站点... 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Ranges" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains" /f
START /WAIT REGEDIT /S "script\setting.reg"
Echo ============================================== 
Echo %Date% %Time% 复制收藏夹数据到浏览器... 
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
Echo %Date% %Time% 删除启动脚本... 
if exist %windir%\system32\GroupPolicy\User\Scripts\Logon\UserConf.bat (
	DEL %windir%\system32\GroupPolicy\User\Scripts\Logon\UserConf.*
)
Echo ============================================== 
Echo %Date% %Time% 重启IE浏览器... 
taskkill /f /t /im iexplore.exe 2>nul

Echo ==============================================
Echo %Date% %Time% 创建共享目录... 
mklink /D c:\users\%username%\Desktop\凯哥的办公网仓库 \\10.100.17.87\凯哥的办公仓库
mklink /D c:\users\%username%\Desktop\凯哥的生产网仓库 \\172.100.17.187\凯哥的临时仓库

Echo 请验证业务系统是否可以正常打开... 
Echo 如有问题，请联系符凯 18627336759
Pause > Nul 
Exit



