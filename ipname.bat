@COLOR 0A
@ECHO Off
;�ռ�ȫ��IP��ַ����������Ϣ
Title ��ѯ�����������ߵ���IP
ECHO ���ڻ�ȡ�������ڵ��������߼����IP�����Ե�... 
SET ipt=10.100
for /l %%x in (11,1,27) do (
for /l %%i in (20,1,254) do (
echo %ipt%.%%x.%%i
for /f "tokens=3-4 delims= " %%j in ('@ping -a %ipt%.%%x.%%i -n 1 -w 600 ^| find /i "10"') do (
echo %%j %%k >> static.txt
)))
pause