@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
cd.> install.temp
:main
title Batch Console - �������
echo ��ӭʹ�� Batch Console �������
pause
echo ��������������� Batch Console �Ĳ�������
echo ���������򵼽�����ȷ��д����ȷ��������������С�
pause
:part-0
cls
title Batch Console - ��ʼ���趨
echo ���Ǵ����ļ�����л�ȡ����������Ϣ��
echo �����û���: %username%
echo ���İ�װ��: %systemdrive%
ver | find "4.0." > NUL && echo ����ϵͳ�汾: Windows 95
ver | find "4.10." > NUL && echo ����ϵͳ�汾: Windows 98
ver | find "4.90." > NUL && echo ����ϵͳ�汾: Windows ME
ver | find "3.51." > NUL && echo ����ϵͳ�汾: Windows NT 3.5
ver | find "5.0." > NUL && echo ����ϵͳ�汾: Windows 2000
ver | find "5.1." > NUL && echo ����ϵͳ�汾: Windows XP
ver | find "5.2." > NUL && echo ����ϵͳ�汾: Windows 2003
ver | find "6.0." > NUL && echo ����ϵͳ�汾: Windows Vista
ver | find "6.1." > NUL && echo ����ϵͳ�汾: Windows 7
ver | find "6.2." > NUL && echo ����ϵͳ�汾: Windows 8
ver | find "10." > NUL && echo ����ϵͳ�汾: Windows 10
:input-1
set /p correct=������Ϣ�Ƿ���ȷ��(yes/no):
if "%correct%"=="yes" goto part-1
if "%correct%"=="no" goto no-1
echo ����������ȷ�Ļش����ִ�Сд��
goto input-1
:no-1
echo �������ȷ������һ���ȷ��
set /p what=
if "%what%"=="�û���" goto set-username
if "%what%"=="��װ��" goto set-systemdrive
if "%what%"=="ϵͳ�汾" goto set-systemversion
echo ����������ȷ�Ļش�
goto no-1
:set-username
set /p username=������������ȷ�û���:
goto part-0
:set-systemdrive
echo ��ʾ���̷�Ӧ���� : ��β���� C: D: E:
set /p systemdrive=������������ȷ��װ�̷�:
goto part-0
:set-systemversion
echo ��ʾ����ֱ���������İ汾���ֻ�Ӣ�Ĳ���
echo ���� Windows 7�������� 7 ����
echo ���� Windows Vista�������� Vista ����
set /p systemversion=������������ȷ�汾:
goto part-0

:part-1
cls
title Batch Console - ����Ŀ¼λ��
echo Batch Console ��Ҫһ��λ������������ļ������ݡ�
echo ��������ϣ�����Ŀ¼���ڵ�λ�á�
echo ���� C:\Users\%username%\Desktop\
echo ��ô�����ǽ��������λ�ô���һ����Ϊ data ���ļ��У����������Ǵ�����ݵĵط��ˡ�
:input-2
set /p path=��������ϣ����λ��:
echo ���Ƿ�ȷ���� %path% ���� data �ļ��У�
set /p yn=(y/n):
if "%yn%"=="y" md %path%\data\ & goto part-2
goto part-1

:part-2
set data=%path%\data\
md %data%\files\
md %data%\plugins\
set files=%data%\files\
set plugins=%data%\plugins\
md %data%\plugins\disabled\
md %data%\plugins\removed\
echo %data% > %systemdrive%\Users\%username%\Desktop\data.donotdelete
echo %files% > %data%\files\files.profile
echo %plugins% > %data%\files\plugins.profile
cd.> %data%\files\install_info.donotdelete
del install.temp 1>nul 2>nul
title Batch Console - �������
echo ���� Batch Console �Ѿ���������ˣ�Ŀǰ�����Կ�ʼ����ʹ�á�
echo �����Ա��������κα�����������ӭ�����������
echo Github: https://github.com/Subilan/Batch-Console/
echo ���� github ����ҳ������ exit �˳������� start ���� Batch Console
echo ��л�������ǵ����Σ�
set /p open=
if "%open%"=="github" start https://github.com/Subilan/Batch-Console/ & exit
if "%open%"=="exit" exit
if "%open%"=="start" start "" "Batch Console.cmd" & exit
exit

