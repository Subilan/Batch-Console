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
title Batch Console - 部署程序
echo 欢迎使用 Batch Console 部署程序！
pause
echo 本程序将引导您完成 Batch Console 的部署工作。
echo 请您根据向导进行正确填写，以确保程序的正常运行。
pause
:part-0
cls
title Batch Console - 初始化设定
echo 我们从您的计算机中获取到了如下信息：
echo 您的用户名: %username%
echo 您的安装盘: %systemdrive%
ver | find "4.0." > NUL && echo 您的系统版本: Windows 95
ver | find "4.10." > NUL && echo 您的系统版本: Windows 98
ver | find "4.90." > NUL && echo 您的系统版本: Windows ME
ver | find "3.51." > NUL && echo 您的系统版本: Windows NT 3.5
ver | find "5.0." > NUL && echo 您的系统版本: Windows 2000
ver | find "5.1." > NUL && echo 您的系统版本: Windows XP
ver | find "5.2." > NUL && echo 您的系统版本: Windows 2003
ver | find "6.0." > NUL && echo 您的系统版本: Windows Vista
ver | find "6.1." > NUL && echo 您的系统版本: Windows 7
ver | find "6.2." > NUL && echo 您的系统版本: Windows 8
ver | find "10." > NUL && echo 您的系统版本: Windows 10
:input-1
set /p correct=以上信息是否正确？(yes/no):
if "%correct%"=="yes" goto part-1
if "%correct%"=="no" goto no-1
echo 请您输入正确的回答，区分大小写。
goto input-1
:no-1
echo 如果不正确，是哪一项不正确？
set /p what=
if "%what%"=="用户名" goto set-username
if "%what%"=="安装盘" goto set-systemdrive
if "%what%"=="系统版本" goto set-systemversion
echo 请您输入正确的回答。
goto no-1
:set-username
set /p username=请输入您的正确用户名:
goto part-0
:set-systemdrive
echo 提示：盘符应该以 : 结尾，如 C: D: E:
set /p systemdrive=请输入您的正确安装盘符:
goto part-0
:set-systemversion
echo 提示：请直接输入您的版本数字或英文部分
echo 如是 Windows 7，则输入 7 即可
echo 如是 Windows Vista，则输入 Vista 即可
set /p systemversion=请输入您的正确版本:
goto part-0

:part-1
cls
title Batch Console - 设置目录位置
echo Batch Console 需要一个位置来存放它的文件和数据。
echo 请输入您希望这个目录存在的位置。
echo 比如 C:\Users\%username%\Desktop\
echo 那么，我们将会在这个位置创建一个名为 data 的文件夹，它就是我们存放数据的地方了。
:input-2
set /p path=请输入您希望的位置:
echo 您是否确定在 %path% 创建 data 文件夹？
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
title Batch Console - 部署完成
echo 您的 Batch Console 已经部署完成了，目前您可以开始正常使用。
echo 若您对本程序有任何宝贵的意见，欢迎向作者提出。
echo Github: https://github.com/Subilan/Batch-Console/
echo 输入 github 打开网页，输入 exit 退出，输入 start 启动 Batch Console
echo 感谢您对我们的信任！
set /p open=
if "%open%"=="github" start https://github.com/Subilan/Batch-Console/ & exit
if "%open%"=="exit" exit
if "%open%"=="start" start "" "Batch Console.cmd" & exit
exit

