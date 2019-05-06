@COLOR 0A
@ECHO Off
;收集全行IP地址与主机名信息
Title 查询局域网内在线电脑IP
ECHO 正在获取本网段内的其它在线计算机IP，请稍等... 
SET ipt=10.100
for /l %%x in (11,1,27) do (
for /l %%i in (20,1,254) do (
echo %ipt%.%%x.%%i
for /f "tokens=3-4 delims= " %%j in ('@ping -a %ipt%.%%x.%%i -n 1 -w 600 ^| find /i "10"') do (
echo %%j %%k >> static.txt
)))
pause