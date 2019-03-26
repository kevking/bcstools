@Echo off 
title 长行小工具v1.2 by 符凯  
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
Echo %Date% %Time% 开始设置IE信任站点... 
rem 可信任站点通配符有效案例：
rem *://*.baidu.com
rem *://192.168.1-99.*
rem 可信任站点通配符无效案例：
rem ftp://*
rem http://www.*.com
rem 删除现有信任站点
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
Echo %Date% %Time% 开始设置IE兼容性... 
rem IE兼容性不支持通配符设置
rem 需要添加兼容性的网址有：
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
rem 0        我的电脑
rem 1        本地 Intranet 区域
rem 2        受信任的站点区域
rem 3        Internet 区域
rem 4        受限制的站点区域
rem 除非另外声明，否则每个 DWORD 值等于 0、1 或 3。通常，设置为 0 则将具体操作设置为允许；设置为 1 则导致出现提示；设置为 3 则禁止执行具体操作
rem 1001     ActiveX 控件和插件：下载已签署的 ActiveX 控件 
rem 1004     ActiveX 控件和插件：下载未签署的 ActiveX 控件 
rem 1200     ActiveX 控件和插件：运行 ActiveX 控件和插件 
rem 1201     ActiveX 控件和插件：对没有标记为可安全执行脚本的 ActiveX 控件进行初始化和脚本运行 
rem 1206     其他：允许 Internet Explorer Web 浏览器控件的脚本编写 ^ 
rem 1207     保留 # 1208     ActiveX 控件和插件：允许以前未使用的 ActiveX 控件在没有提示的情况下运行 ^ 
rem 1209     ActiveX 控件和插件：允许脚本小程序 
rem 120A     ActiveX 控件和插件：ActiveX 控件和插件：覆盖每站点（基于域）ActiveX 限制 
rem 120B     ActiveX 控件和插件：覆盖每站点（基于域）ActiveX 限制 
rem 1400     脚本编写：活动脚本编写 
rem 1402     脚本编写：Java 小程序脚本编写 
rem 1405     ActiveX 控件和插件：对标记为可安全执行脚本的 ActiveX 控件执行脚本 
rem 1406     其他：跨域访问数据源 
rem 1407     脚本：允许编程剪贴板访问 
rem 1408     保留 # 
rem 1601     其他：提交未加密的表单数据 
rem 1604     下载：字体下载 1605     运行 Java # 
rem 1606     其他：用户数据持久性 ^ 
rem 1607     其他：跨域浏览子框架 
rem 1608     其他：允许 META REFRESH * ^ 
rem 1609     其他：显示混合内容 * 
rem 160A     其他：在将文件上载到服务器时包括本地目录路径 ^ 
rem 1800     其他：桌面项目的安装 
rem 1802     其他：拖放或复制和粘贴文件 
rem 1803     下载：文件下载 ^ 
rem 1804     其他：在 IFRAME 中启动程序和文件 
rem 1805     在 Web 视图中启动程序和文件 # 
rem 1806     其他：启动应用程序和不安全文件 
rem 1807     保留 ** # 1808     保留 ** # 
rem 1809     其他：使用弹出窗口阻止程序 ** ^ 
rem 180A     保留 # 180B     保留 # 180C     保留 # 180D     保留 # 
rem 1A00     用户身份验证：登录 
rem 1A02     允许计算机上存储的持久 cookie # 
rem 1A03     允许每会话 cookie（未存储） # 
rem 1A04     其他：没有证书或只有一个证书时不提示进行客户证书选择 * ^ 
rem 1A05     允许第三方持久 cookie * 
rem 1A06     允许第三方会话 cookie * 
rem 1A10     隐私设置 * 1C00     Java 权限 # 
rem 1E05     其他：软件频道权限 1F00     保留 ** # 
rem 2000     ActiveX 控件和插件：二进制和脚本行为 
rem 2001     依赖 NET Framework 的组件：运行未用 Authenticode 签名的组件 
rem 2004     依赖 NET Framework 的组件：运行未用 Authenticode 签名的组件
rem  2100     其他：基于内容打开文件，而不是基于文件扩展名 ** ^ 
rem 2101     其他：在低特权 Web 内容区域中的网站可以导航到此区域 ** 
rem 2102     其他：允许由脚本初始化的窗口，没有大小和位置限制 ** ^ 
rem 2103     脚本：允许通过脚本更新状态栏 ^ 
rem 2104     其他：允许网站打开没有地址或状态栏的窗口 ^ 
rem 2105     脚本：允许网站使用脚本窗口提示信息 ^ 
rem 2200     下载：文件下载自动提示 ** ^ 
rem 2201     ActiveX 控件和插件：ActiveX 控件自动提示 ** ^ 
rem 2300     其他：允许网页为活动内容使用受限制的协议 ** 
rem 2301     其他：使用钓鱼网站筛选器 ^ 2400     .NET Framework：XAML 浏览器应用程序 
rem 2401     .NET Framework：XPS 文档 2402     .NET Framework：松散 XAML 
rem 2500     打开保护模式 [仅 Vista 设置] # 2600     启用 .NET Framework 设置 ^
Echo ============================================== 
Echo %Date% %Time% 开始设置IE选项... 
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
Echo %Date% %Time% 复制收藏夹数据到浏览器... 
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
Echo %Date% %Time% 删除启动脚本... 
DEL %windir%\system32\GroupPolicy\User\Scripts\Logon\UserConf.*

Echo ============================================== 
Echo %Date% %Time% 重启IE浏览器... 
taskkill /f /t /im iexplore.exe 2>nul
Echo 请验证业务系统是否可以正常打开... 
Echo 如有问题，请联系符凯 18627336759
Pause > Nul 
Exit



