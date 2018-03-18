::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJGyX8VAjFChBTg2OPWWGIrAP4/z0/9al7EQeW4I=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMbyXrZg==
::ZQ05rAF9IAHYFVzEqQISKQ9XREShM2WpCbkZiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDBG9G1mCOb0Z6eTP9dWg40MFd80NXa+Oug==
::fBEirQZwNQPfEVWB+kM9LVsJDBGFKgs=
::cRolqwZ3JBvQF1fEqQK35NfQlugG5KE9712aFCSb
::dhA7uBVwLU+EWHuF4AK1+e7TiN4K8qMyyG+bNiyb
::YQ03rBFzNR3SWATEVotwARVASRaMOX/a
::dhAmsQZ3MwfNWATEx3ECZyhBTg2OPWXa
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJGyX8VAjFChBTg2OPWWGIrAP4/z0/9alo1keXKIcd4HI1biLYLBduAXXO5M10xo=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:reload
set devlock=false
set enablenewcommand=false
set newcommand= 
if exist data\commands\commanding.load goto comload
:comload.back
if exist %appdata%\Console\dpass.int goto passload.dev
:passload.back
set filepath=C:\
set unman=false
setlocal enabledelayedexpansion
setlocal enableextensions
set devenable=false
::MAKEDIR
md %appdata%\Console\ 1>nul 2>nul
md C:\ 1>nul 2>nul
md C:\svd\ 1>nul 2>nul
md data\ 1>nul 2>nul
md data\commands\ 1>nul 2>nul
:inv
echo invalid unicode preview. > C:\consetInfo.set
cd.> %systemdrive%\Windows\System32\test.txt || set unman=true
if "%unman%"=="false" del %systemdrive%\Windows\System32\test.txt 1>nul 2>nul
if exist C:\Devmode.aty set devmode=true
del %systemdrive%\Windows\System32\test.txt
if "%return%"=="0" goto return.zero
cls
title Batch Console
:setcon
set eof=false
set out=^>^>
set num=7
set outputpath=%cd%
set fnum=1
set listnum=1
::SETTINGS
if exist C:\svd\savebackTrue.svd set saveback=true & goto skipr
if exist C:\svd\devmodeTrue.svd set devmode=true & goto skipr
if exist C:\svd\opseTrue.svd set outputsystemerror=true & set func.outputsystemerror=  & goto skipr
if exist C:\svd\qdFalse.svd set quickdelete=false & set func.quickdelete=  & goto skipr
set quickdelete=true
set func.quickdelete=/f /q
set outputsystemerror=false
set func.outputsystemerror=2^>nul ^|^| goto error
:skipr
if "%devmode%"=="true" goto devset.intro
set devmode=false
set devc-eof=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-eoo=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-cls=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-goto=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-color=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set into-dev=echo 无法验证您的开发者状态，请重新设置布尔值后重试。 ^& goto int
:begin
@echo off
goto main

:main
cls
if "%unman%"=="true" echo 当前可能无法使用管理员权限，可能会影响部分功能的正确执行。
color 0F
echo Batch Console [v0.2]
echo 输入 help 查看帮助
:int
title Batch Console
set /p con=%username%~^>
if "%con%"=="help" goto help
if "%con%"=="?" goto help
if "%con:~0,4%"=="mode" goto mode.choose
if "%con:~0,9%"=="setoutput" goto setoutput
if "%con:~0,6%"=="output" goto output.choose
if "%con%"=="echo off" %devc-eof%
if "%con%"=="echo on" %devc-eoo%
if "%con%"=="@echo off" %devc-eof%
if "%con%"=="@echo on" %devc-eoo%
if "%con%"=="cls" %devc-cls%
if "%con:~0,4%"=="goto" %devc-goto%
if "%con:~0,5%"=="color" %devc-color%
if "%con:~0,3%"=="ftp" goto int
if "%con:~0,7%"=="control" goto control.choose
if "%con:~0,3%"=="del" goto del.faster
if "%con:~0,8%"=="setlocal" echo SETLOCAL 已完全初始化。 & goto int
if "%con:~0,3%"=="set" goto set.choose
if "%con%"=="reload" goto reload.sure
if "%con%"=="color 0" echo 不能将 COLOR 设置为0。 & goto int
if "%con%"=="help-cmd" help & goto int
if "%con%"=="help -cmd" help & goto int
if "%con:~0,2%"=="do" goto do.choose
if "%con:~0,6%"=="config" goto cfg.choose
if "%con%"=="about" goto about
if "%con%"=="whatsnew" goto whatsnew
if "%con:~0,4%"=="make" goto make.choose
if "%con%"=="dcom" goto dcom
if "%con:~0,5%"=="sleep" goto sleep
if "%con:~0,9%"=="hibernate" goto hib
if "%con:~0,8%"=="shutdown" goto shutdown
if "%con:~0,7%"=="restart" goto restart
if "%con:~0,4%"=="open" goto open.choose
if "%con%"=="cls" goto main
if "%enablenewcommand%"=="false" goto enter
if "%con%"=="%commandnamem%" %commandinm% & goto int
:enter
%con% %func.outputsystemerror%
set con= 
goto int

:open.choose
if "%con:~5%"=="-?" goto open.help
if "%con:~5%"=="/?" goto open.help
if /i "%con:~5%"=="font" start %systemdrive%\Windows\Fonts & goto int
if /i "%con:~5%"=="fonts" start %systemdrive%\Windows\Fonts & goto int
if /i "%con:~5%"=="字体" start %systemdrive%\Windows\Fonts & goto int
if /i "%con:~5%"=="fon" start %systemdrive%\Windows\Fonts & goto int
if /i "%con:~5%"=="用户" start %userprofile% & goto int
if /i "%con:~5%"=="userprofile" start %userprofile% & goto int
if /i "%con:~5%"=="用户档案" start %userprofile% & goto int
if /i "%con:~5%"=="user" start %userprofile% & goto int
if /i "%con:~5%"=="%username%" start %userprofile% & goto int
if /i "%con:~5%"=="windows" start %systemdrive%\Windows & goto int
if /i "%con:~5%"=="系统" start %systemdrive%\Windows & goto int
if /i "%con:~5%"=="win" start %systemdrive%\Windows & goto int
if /i "%con:~5%"=="hosts" start %systemdrive%\Windows\System32\drivers\etc & goto int
if /i "%con:~5%"=="host" start %systemdrive%\Windows\System32\drivers\etc & goto int
if /i "%con:~5%"=="system32" start %systemdrive%\Windows\System32 & goto int
if /i "%con:~5%"=="32" start %systemdrive%\Windows\System32 & goto int
if /i "%con:~5%"=="system64" start %systemdrive%\Windows\SysWOW64 & goto int
if /i "%con:~5%"=="64" start %systemdrive%\Windows\SysWOW64 & goto int
if /i "%con:~5%"=="syswow64" start %systemdrive%\Windows\SysWOW64 & goto int
if /i "%con:~5%"=="programs32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="programfiles32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="program files32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="program file32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="program32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="软件32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="programs64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programfiles64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program files64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program file64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="软件64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programs" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program files" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program file" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programfiles" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="软件" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="old" start %systemdrive%\Windows.old & goto int
if /i "%con:~5%"=="windows.old" start %systemdrive%\Windows.old & goto int
if /i "%con:~5%"=="oldwindows" start %systemdrive%\Windows.old & goto int
if /i "%con:~5%"=="music" start %userprofile%\Music & goto int
if /i "%con:~5%"=="音乐" start %userprofile%\Music & goto int
if /i "%con:~5%"=="乐曲" start %userprofile%\Music & goto int
if /i "%con:~5%"=="musics" start %userprofile%\Music & goto int
if /i "%con:~5%"=="desktop" start %userprofile%\Desktop & goto int
if /i "%con:~5%"=="desk" start %userprofile%\Desktop & goto int
if /i "%con:~5%"=="桌面" start %userprofile%\Desktop & goto int
if /i "%con:~5%"=="download" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="downloads" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="down" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="downs" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="下载" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="onedrive" start %userprofile%\OneDrive & goto int
if /i "%con:~5%"=="appdata" start %userprofile%\AppData\ & goto int
if /i "%con:~5%"=="roaming" start %AppData% & goto int
if /i "%con:~5%"=="local" start %userprofile%\AppData\Local & goto int
if /i "%con:~5%"=="locallow" start %userprofile%\AppData\LocalLow & goto int
echo 找不到 %con:~5%
goto int

:restart
if "%con:~8%"=="-o" shutdown -r -o
if "%con:~8%"=="/o" shutdown -r -o
if "%con:~8%"=="-?" goto restart.help
if "%con:~8%"=="/?" goto restart.help
shutdown -r
:shutdown
if "%con:~9%"=="-?" goto shutdown.help
if "%con:~9%"=="/?" goto shutdown.help
shutdown -s -t 0
:hib
if "%con:~10%"=="-?" goto hibernate.help
if "%con:~10%"=="/?" goto hibernate.help
shutdown -h
:sleep
if "%con:~6%"=="-?" goto sleep.help
if "%con:~6%"=="/?" goto sleep.help
powercfg -h off 1>nul 2>nul
rundll32.exe powrprof.dll,SetSuspendState 0,1,0
powercfg -h on 1>nul 2>nul
goto int

:dcom
if exist %cd%\data\commands\commanding.load goto dcc
echo 目前不存在被定义的指令。
goto int
:dcc
set /p yn=删除(y/n):
if "%yn%"=="y" goto delcommand
echo 用户取消操作。
goto int
:delcommand
del %cd%\data\commands\commanding.load
del %cd%\data\commands\commandname.load
echo 已删除%commandnamem%
set enablenewcommand=false
goto int

:make.choose
if "%con:~5,3%"=="dir" goto makedir
if "%con:~5,3%"=="com" goto makecom
if "%con:~5%"=="-?" goto make.help
if "%con:~5%"=="/?" goto make.help
echo %con:~5% 不是有效的 make 参数。
goto int

:makecom
set command=%con:~9%
title 指令设置向导 - %command%
echo 目前正在编辑%command%
set /p commc=
echo 是否确定将%command%的效用内容存储为%commc%？
set /p yn=(y/n):
if "%yn%"=="y" goto savecom
echo 已放弃编辑 %con:~9%。
goto int
:savecom
echo read.commandname >> data\commands\commandname.load
echo %command% >> data\commands\commandname.load
echo read.commanding >> data\commands\commanding.load
echo %commc% >> data\commands\commanding.load
echo 已存储 %command% 内容为 %commc%
set enablenewcommand=true
echo 该指令将在配置文件存在的情况下生效。
goto int


:makedir
set dirpath=%con:~9%
echo %con:~9% > nul | find " " && goto makefile.space
md %dirpath%
echo 已创建 %dirpath%
goto int
:makefile.space
md "%dirpath%"
echo 已创建 %dirpath%
goto int

:whatsnew
cls
color 1A
title What's new
echo Indev 测试计划已启动(但尚未开展)！
echo Console 的指令由你来自定义
echo 史无前例*的指令判定机制:
echo 看上去疑似很垃圾 ——网友评价
echo 注*: 不保证该词语前后语境的权威性
goto int

:about
cls
color 1A
title 关于
echo 这是一个简单的类控制台程序。
echo 旨在模仿一切可以被CMD所处理的文件的批处理情况，
echo 许多指令在这里得到简化，但依然会有很多的缺陷，
echo 加之本程序很简陋，有待维护与发展。
echo.
echo 感谢您一直以来的支持，感谢您下载了本程序。
echo 独家首发：Bat 展示讨论群。
pause
goto main

:cfg.choose
if "%con:~7%"=="system" goto sys.cfg
if "%con:~7%"=="user" goto user.cfg
if "%con:~7%"=="hardware" goto hdw.cfg
if "%con:~7%"=="/?" goto cfg.help
if "%con:~7%"=="-?" goto cfg.help
if "%con:~7%"=="log" goto log.cfg
echo 无效的参数 %con:~7%
goto int

::Config
:log.cfg
echo [UpdateLog Config]
echo v0.2 更新日志信息
echo - 新增休眠/睡眠/关机/重启 指令
echo - 新增指令
echo · whatsnew
echo · make
echo · open
echo - 新增 Dev 指令
echo · info
echo 该指令用来讲述 Batch Console 的详细结构和相关信息
goto int
:sys.cfg
echo [System Config]
echo 加载中...
systeminfo | find "初始安装日期"
systeminfo | find "系统启动时间"
systeminfo | find "BIOS 版本"
systeminfo | find "物理内存总量"
ver | find "4.0." > NUL && echo 系统版本: Windows 95(太旧了!)
ver | find "4.10." > NUL && echo 系统版本: Windows 98(太旧了!)
ver | find "4.90." > NUL && echo 系统版本: Windows ME(太旧了!)
ver | find "3.51." > NUL && echo 系统版本: Windows NT 3.5(太旧了!)
ver | find "5.0." > NUL && echo 系统版本: Windows 2000(太旧了!)
ver | find "5.1." > NUL && echo 系统版本: Windows XP(太旧了!)
ver | find "5.2." > NUL && echo 系统版本: Windows 2003(太旧了!)
ver | find "6.0." > NUL && echo 系统版本: Windows Vista(TM)
ver | find "6.1." > NUL && echo 系统版本: Windows 7(TM)
ver | find "6.2." > NUL && echo 系统版本: Windows 8(R)
ver | find "10." > NUL && echo 系统版本: Windows 10(R)
echo 系统安装文件夹: %systemroot%
goto int
:user.cfg
echo [User Config]
echo 加载中...
systeminfo | find "登录服务器"
echo 主机名: %computername%
echo 用户名: %username%
echo 用户文件夹: %userprofile%
echo AppData: %AppData%
goto int

:ReadSpecialLine
setlocal
for /f "delims=" %%a in ('more +%2 %1') do endlocal&set "%3=%%a"&goto:eof
:hdw.cfg
if "%unman%"=="true" echo 权限不足。 & goto int
echo [Hardware Config]
echo 加载中...
echo Wmic Diskdrive get Command~^>
wmic diskdrive get caption > C:\DiskCaption.txt
call :ReadSpecialLine C:\DiskCaption.txt 1 line
set diskname=%line%
wmic diskdrive get size > C:\DiskSize.txt
call :ReadSpecialLine C:\DiskSize.txt 1 line
set disksize=%line%
wmic diskdrive get interfacetype > C:\SATA.txt
call :ReadSpecialLine C:\SATA.txt 1 line
set kindS=%line%
echo Wmic Baseboard get Command~^>
wmic baseboard get Manufacturer > C:\basename.txt
call :ReadSpecialLine C:\basename.txt 1 line
set basename=%line%
wmic baseboard get product > C:\prodname.txt
call :ReadSpecialLine C:\prodname.txt 1 line
set prod=%line%
echo Wmic DesktopMonitor get Command~^>
wmic desktopmonitor get name > C:\dm.txt
call :ReadSpecialLine C:\dm.txt 1 line
set dmn=%line%
echo Wmic CPU get Command~^>
wmic cpu get name > C:\cpuname.txt
call :ReadSpecialLine C:\cpuname.txt 1 line
set cpuname=%line%
echo 硬盘名称: %diskname%
echo 硬盘容量: %disksize%MB
echo 硬盘类型: %kindS%
echo 主板厂商: %basename%
echo 主板型号: %prod%
echo 显示器名称: %dmn%
echo CPU名称和最大频率: %cpuname%
del C:\DiskCaption.txt
del C:\DiskSize.txt
del C:\SATA.txt
del C:\basename.txt
del C:\prodname.txt
del C:\dm.txt
del C:\cpuname.txt
goto int

:do.choose
if "%con:~3,2%"=="-l" goto do.loop
if "%con:~3,2%"=="-t" goto do.till
if "%con:~3,2%"=="/l" goto do.loop
if "%con:~3,2%"=="/t" goto do.till
if "%con:~3,2%"=="/?" goto do.help
if "%con:~3,2%"=="-?" goto do.help
echo DO.CHH 未知参数或指令错误。
goto int

:do.loop
set comm=%con:~8%
set loops=%con:~6,!cut!%
set /a test=%loops%+1 1>nul 2>nul || goto loop.fail-num
if %loops% GTR 9 goto loop.fail-num
if %loops% LSS 1 goto loop.fail-num
set time=-1
:doit
set /a time=%time%+1
if "%time%"=="%loops%" goto dol.comp
%comm%
goto doit

:dol.comp
echo 循环执行完成。
goto int

:loop.fail-num
echo 无法识别的数字
set loops= 
goto int

:do.till
echo 输入 back 以退出
echo 输入 change [COMMAND] 以切换
set comm=%con:~6%
:till
set /p tills=
if "%tills%"=="back" goto int
%comm%
goto till

:reload.sure
echo 确定重新载入数据?
echo 这会删除您的所有设置与资料。(不包括已保存的)
set /p yn=(Y/N)^>
if "%yn%"=="y" goto reload
goto main

:del.faster
del %con:~4% %func.quickdelete%
goto int

:set.choose
if "%con:~4,11%"=="quickdelete" goto quickdelete
if "%con:~4,7%"=="devmode" goto devmode
if "%con:~4,17%"=="outputsystemerror" goto outputsystemerror
if "%con:~4,5%"=="loops" goto loopset
if "%con:~4%"=="/?" goto set.help
if "%con:~4%"=="-?" goto set.help
%con%
goto int

::function manage
:loopset
set /a test=%con:~10%+1 || goto lfail
set cut=%con:~10%
goto int

:lfail
echo 不正确的数字 %con:~10%
goto int
:quickdelete
if "%con:~16%"=="true" set quickdelete=true & echo 已启用快速删除 & set func.quickdelete=/f /q & del C:\svd\qdFalse.svd 1>nul 2>nul & goto int
if "%con:~16%"=="false" set quickdelete=false & echo 已禁用快速删除 & set func.quickdelete=  & echo cannot view the file in dos mode > C:\svd\qdFalse.svd & goto int
echo "%con:~16%" 不是有效的布尔值。
goto int
:devmode
if "%con:~12%"=="true" set dev=true & echo 已启用开发者模式 & goto devset
if "%con:~12%"=="false" set dev=false & echo 已禁用开发者模式 & del C:\svd\devmodeTrue.svd 1>nul 2>nul & goto devdis
echo "%con:~12%" 不是有效的布尔值。
goto int
:outputsystemerror
if "%con:~22%"=="true" set outputsystemerror=true & set func.outputsystemerror= & echo 已启用输出系统错误 & echo unkown host. > C:\svd\opseTrue.svd & goto int
if "%con:~22%"=="false" set outputsystemerror=false & set func.outputsystemerror=2^>nul ^|^| goto error & echo 已禁用输出系统错误 & del C:\svd\opseTrue.svd 1>nul 2>nul & goto int

:devset
set devc-eof=echo off
set devc-eoo=echo on
set devc-cls=cls
set devc-goto=goto enter
set devc-color=goto enter
set devenable=false
set devmode=true
echo cannot read the file in dos mode > C:\Devmode.aty
goto int
:devdis
set devc-eof= 
set devc-eoo= 
set devc-cls= 
set devc-goto= 
set devc-color= 
set into-dev= 
set devc-eof=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-eoo=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-cls=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-goto=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devc-color=echo 无法在 %%DEVMODE%% 被禁用时使用当前指令。 ^& goto int
set devmode=false
del C:\Devmode.aty
goto int

:control.choose
if "%con:~8%"=="/?" goto control.help
if "%con:~8%"=="-?" goto control.help
if "%con:~8%"=="internet" control inetcpl.cpl
if "%con:~8%"=="web" control inetcpl.cpl
if "%con:~8%"=="inetcpl" control inetcpl.cpl
if "%con:~8%"=="game" control joy.cpl
if "%con:~8%"=="joy" control joy.cpl
if "%con:~8%"=="sound" control mmsys.cpl
if "%con:~8%"=="mmsys" control mmsys.cpl
if "%con:~8%"=="lang" control intl.cpl
if "%con:~8%"=="language" control intl.cpl
if "%con:~8%"=="area" control intl.cpl
if "%con:~8%"=="area and language" control intl.cpl
if "%con:~8%"=="intl" control intl.cpl
if "%con:~8%"=="ncpa" control ncpa.cpl
if "%con:~8%"=="internetmanager" control ncpa.cpl
if "%con:~8%"=="netsetup"control netsetup.cpl
if "%con:~8%"=="user" control lusrmgr.cpl
if "%con:~8%"=="lusrmgr" control lusrmgr.cpl
if "%con:~8%"=="odbccp32" control odbccp32.cpl
if "%con:~8%"=="ODBC" control odbccp32.cpl
if "%con:~8%"=="wscui" control wscui.cpl
if "%con:~8%"=="windowssafecenter" control wscui.cpl
if "%con:~8%"=="wuaucpl" control wuaucpl.cpl
if "%con:~8%"=="windowsupdate" control wuaucpl.cpl
if "%con:~8%"=="windowsautoupdate" control wuaucpl.cpl
if "%con:~8%"=="igfxcpl" control igfxcpl.cpl
if "%con:~8%"=="intel" control igfxcpl.cpl
if "%con:~8%"=="intelgraphic" control igfxcpl.cpl
if "%con:~8%"=="nvcpl" control nvcpl.cpl
if "%con:~8%"=="nvgraphic" control nvcpl.cpl
if "%con:~8%"=="access" control access.cpl
if "%con:~8%"=="accessiblity" control access.cpl
if "%con:~8%"=="appwiz" control appwiz.cpl
if "%con:~8%"=="appman" control appwiz.cpl
if "%con:~8%"=="appmanager" control appwiz.cpl
if "%con:~8%"=="application" control appwiz.cpl
if "%con:~8%"=="applications" control appwiz.cpl
if "%con:~8%"=="desk" control desk.cpl
if "%con:~8%"=="graphic" control desk.cpl
if "%con:~8%"=="firewall" control firewall.cpl
if "%con:~8%"=="hdwwiz" control hdwwiz.cpl
if "%con:~8%"=="addhardware" control hdwwiz.cpl
if "%con:~8%"=="sysdm" control sysdm.cpl
if "%con:~8%"=="systeminfo" control sysdm.cpl
if "%con:~8%"=="system" control sysdm.cpl
goto int

:error
echo %con% 不是可执行的BC指令或CMD指令。
goto int

:mode.choose
if "%con:~5%"=="net" goto main.net
if "%con:~5%"=="web" goto main.net
if "%con:~5%"=="network" goto main.net
if "%con:~5%"=="dev" goto main.dev
echo 不正确的 MODE 选择: %con:~5%。
goto int

:setoutput
set outputpath=%con:~10%
echo 已将 OUTPUT 出点设置为 %con:~10%
goto int

:output.choose
if "%con:~7,2%"=="-?" goto output.help
if "%con:~7,2%"=="/?" goto output.help
if "%outputpath%"=="none" echo 未设置入点。 & goto int
if "%con:~7,2%"=="/c" set out=^> & set cover=true & set num=10
if "%con:~7,2%"=="-c" set out=^> & set cover=true & set num=10
echo !con:~%num%! %out% %outputpath%
echo .output^>!con:~%num%! to %outputpath%
set num=7
set out=^>^>
goto int

:main.net
cls
color 1F
title Batch Console ^> Network
echo Net Core [Valpha]
echo 输入 help 查看帮助
:var
set /p nec=
title Batch Console ^> Network
if "%nec:~0,4%"=="test" goto test.choose
if "%nec:~0,5%"=="uping" goto unlimitedPing
if "%nec:~0,3%"=="ftp" goto ftp
if "%nec%"=="help" goto net.help
if "%nec%"=="?" goto net.help
if "%nec%"=="back" goto main
if "%nec%"=="sping" goto sping
echo %nec% 不是可用的 NET 指令。
goto var

:sping
echo back 返回至主菜单
echo undo 撤销操作
:sp-lines
set /p lines=请输入 PING 的线程:
if %lines% GTR 15 echo 超过此返回可能会导致大量性能下降。
if "%lines%"=="back" goto main.net
if "%lines%"=="undo" echo 尚无可撤销的操作。
goto sp-packages
:sp-packages
set /p packs=请输入每个包的大小(字节):
if %packs% LSS 1 echo 错误的数字选择: 小于1 & goto sp-packages
if %packs% GTR 65500 echo 错误的数字选择: 大于65500 & goto sp-packages
if "%packs%"=="back" goto main.net
if "%packs%"=="undo" goto sp-lines
goto sp-times
:sp-times
set /p times=请输入 PING 的次数:
if %times% GTR 500 echo 错误的数字选择: 大于500 & goto sp-times
if %times% LSS 1 echo 错误的数字选择: 小于1 & goto sp-times
if "%times%"=="back" goto main.net
if "%times%"=="undo" goto sp-packages
goto sp-ip
:sp-ip
set /p ip=请输入 PING 的域名或 IP 地址:
if "%ip:~0,1%"=="0" echo 不能以0开头。
if "%ip%"=="back" goto main.net
if "%packs%"=="undo" goto sp-times
pause
set loop=0
set num=1
:getloop
set /a loop=%loop%+1
if "%loop%"=="%lines%" goto sp-back
echo @echo off >> ping%num%.bat
echo mode con cols=30 lines=30 >> ping%num%.bat
echo ping %ip% -n %times% -l %packs% >> ping%num%.bat
echo exit >> ping%num%.bat
start ping%num%.bat
set /a num=%num%+1
goto getloop

:sp-back
echo 按下任意键后删除一切临时文件以及终止一切程序。
pause
set loop=0
set num=1
:getloop2
set /a loop2=%loop2%+1
if "%loop2%"=="%lines%" goto main.net
del ping%num%.bat
set /a num=%num%+1
goto getloop2

:ftp
set return=0
goto reload

:unlimitedPing
::Just add a "-t"
echo ping %nec:~6% -t >> sping.cmd
start sping.cmd
set /p d=按 ENTER 键删除并关闭...
del sping.cmd 1>nul 2>nul || echo 删除失败。
goto main.net

:test.choose
if "%nec:~5%"=="/?" goto test.help
if "%nec:~5%"=="-?" goto test.help
if "%nec:~5,5%"=="-gfw" goto gfw.test
if "%nec:~5,5%"=="/gfw" goto gfw.test
goto net.test

:net.test
title Debug
echo 正在测试 Net 可用性
ping baidu.com -n 1 >nul && goto net.okay
set not-ok=Net& set some=不可用& set other=CMD组件损坏& goto test.error
:net.okay
color 1A
echo Net 目前可用。
color 1F
goto var

:test.error
title Debug - ERROR
color 1C
echo %not-ok% 目前%some%或%other%。
color 1F
goto var

:gfw.test
title Debug
echo 正在测试 GFW 不可用性
ping www.google.com.hk -n 1 >nul && goto gfw.okay
set not-ok=GFW& set some=可用& set other=是VPN协议不支持(很可能)& goto test.error
 :gfw.okay
color 1A
echo GFW 目前不可用。
color 1F
goto var

:return.zero
echo ftp.exe %nec:~4% > ftp.cmd
start ftp.cmd
echo 已成功打开关于 %nec:~4% 的 FTP 链接。
goto var

:main.dev
if "%dev.lock%"=="true" goto dev-login
:dev.logon
if exist C:\svd\devmodeTrue.svd set devmode=true
if "%devmode%"=="true" goto dev-enter
if "%devmode%"=="false" echo 请检查 DEVMODE 是否被允许开启。 & goto int
echo 丢失正确的布尔值。 & goto let
:dev-enter
cls
color 2F
echo Dev Mode [Valpha]
echo 输入 ? 查看帮助
:let
title Batch Console ^> Developer
set /p mad=
if "%mad%"=="?" goto dev.help
if "%mad%"=="help" goto dev.help
if "%mad%"=="back" goto main
if "%mad:~0,8%"=="function" goto func.choose
if "%mad:~0,4%"=="save" goto save
if "%mad:~0,5%"=="clear" goto clear
if "%mad:~0,5%"=="debug" goto debug.choose
if "%mad%"=="info" goto info
if "%mad:~0,4%"=="lock" goto lock.choose
echo %mad% 不是一个可用的开发者指令。
goto let

:dev-login
echo 登录 Devmode
set /p dev.passwordc=dev.password~^>
if "%dev.passwordc%"=="%dev.password%" goto welcome.dev
echo 错误的密码: %dev.passwordc%
goto int
:welcome.dev
cls
color 2F
echo 欢迎回来，%username%！
ping 127.0.0.1 -n 2 >nul
goto dev.logon

:lock.remove
if "%dev.lock%"=="false" echo 尚未设置密码 & goto let
title Devmode ^> Delete Lock
echo 请输入先前的密码
set /p dev.passwordc=
if "%dev.passwordc%"=="%dev.password%" goto dev.dellock
echo 错误的密码: %dev.passwordc%
goto let
:dev.dellock
del %appdata%\Console\dpass.int
set dev.lock=false
set dev.password= 
set dev.passwordc= 
echo 已删除密码保护
goto let

:lock.choose
if "%mad:~5%"=="-?" goto lock.help
if "%mad:~5%"=="/?" goto lock.help
if "%mad:~5%"=="-add" goto lock.add
if "%mad:~5%"=="-remove" goto lock.remove
echo 无效参数。
goto let

:lock.add
if "%unman%"=="true" echo 权限不足 & goto let
title Devmode ^> Lock
echo [Lock Genius]
echo 创建密码:
set /p dev.password=
ping 127.0.0.1 -n 1 >nul
goto lock.comp
:lock.comp
echo Password Save >> %Appdata%\Console\dpass.int
echo %dev.password% >> %Appdata%\Console\dpass.int
set dev.lock=true
echo 已成功设置密码
goto let

:info
cls
title Information
echo About: 0.2
echo 目前，Batch Console 新增了一个 data 目录
echo 一般会自动创建于 Batch Console 存在的目录
echo 该目录目前仅有 commands 一个目录用来存储
echo make 指令创建的命令和相关信息。
echo 其次，Devmode 新增了锁定机制。
echo 输入 lock 来了解。
echo.
echo Information 界面会将每个版本的特殊更新放入内置
echo 并加以不专业的详细解释。
echo 若你感兴趣，不妨在每个版本都来这里一趟。
pause
goto main.dev

:clear
if "%mad:~6%"=="-?" goto clear.help
if "%mad:~6%"=="/?" goto clear.help
echo 当前没有缓存/临时文件。
goto let

:debug.choose
if "%mad:~6%"=="-?" goto debug.help
if "%mad:~6%"=="/?" goto debug.help
if "%mad:~6,5%"=="-view" goto debug.view
if "%mad:~6,5%"=="-edit" goto debug.edit
echo 错误的参数: %mad:~6%
goto let

::目前尚未出现可以正常预览已存储function的方法，暂时弃坑 Orz
:debug.view
title debug fatal
echo %mad:~12% 不是可被 VIEW 的函数。
goto let

:debug.edit
title debug fatal
echo %mad:~12% 不是可被 EDIT 的函数。
goto let

:save
if "%mad:~5%"=="-?" goto save.help
if "%mad:~5%"=="/?" goto save.help
title Batch Console ^> Developer ^> Save
if "%unman%"=="true" goto managementerror
echo 将存储所有变量设置
pause
:: SVD Package
echo cannot view the file in dos mode > C:\svd\savebackTrue.svd
if "%devmode%"=="true" echo cannot view the file in dos mode > C:\svd\devmodeTrue.svd
if "%outputsystemerror%"=="true" echo cannot view the file in dos mode > C:\svd\opseTrue.svd
if "%quickdelete%"=="false" echo cannot view the file in dos mode > C:\svd\qdFalse.svd
echo 已成功存储。
goto let

:managementerror
title FATAL: Management Error: Windows UAC denied.
echo FATAL ERROR: 无权限。
pause
goto let

:func.choose
if "%mad:~9%"=="-?" goto function.help
if "%mad:~9%"=="/?" goto function.help
title Batch Console ^> Developer ^> Function ^> Unkown Parameter
cd.>%systemdrive%\Windows\System32\test.txt || goto managementerror
del %systemdrive%\Windows\System32\test.txt
if "%mad:~9%"=="-add" goto function.add
if "%mad:~9%"=="-remove" goto function.remove
if "%mad:~9%"=="-call" goto function.call
echo %mad:~9% 不是一个有效的参数。
goto let
:function.add
title Batch Console ^> Developer ^> Function ^> Path Set
echo 已进入 FUNCTION.PATH 函数。
echo 请按照以下顺序进行输入:
echo - 存储函数快捷方式的位置 /saveto [Path\.bat,cmd]
echo - 函数内容
echo 亦或者导入已知函数快捷方式:
echo - 输入快捷方式的位置 /input [Path\.bat,cmd]
echo - 存储
echo 对于编写的批处理函数，已自动加上 @echo off 指令。
:leta
set /p func=FUNCTION.PATH^>
if "%func:~0,7%"=="/saveto" goto batorcmd
if "%func:~0,6%"=="/input" goto input.batorcmd
echo 您尚未设置 SAVETO 路径或 INPUT 路径，或者输入了错误的指令。
goto leta
:input.batorcmd
title Batch Console ^> Developer ^> Function ^> Input
if "%func:~-1%"=="\" echo 尚未填写文件信息。 & goto leta
if "%func:~-4%"==".cmd" set svp=%func:~7% & echo 已设置输出路径 & goto inputsth
if "%func:~-4%"==".bat" set svp=%func:~7% & echo 已设置输出路径 & goto inputsth
echo 不能设置非 .CMD 或 .BAT 的文件。
goto leta
:inputsth
echo 已导入 %svp%
title Batch Console ^> Developer ^> Function ^> Save
set /p funcnum=请输入函数序号(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=请输入函数名称:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main.dev
:batorcmd
if "%func:~-1%"=="\" goto nameyourfile
if "%func:~-4%"==".cmd" set svp=%func:~8% & echo 已设置输出路径 & goto letb
if "%func:~-4%"==".bat" set svp=%func:~8% & echo 已设置输出路径 & goto letb
echo 不能设置非 .CMD 或 .BAT 的文件。
goto leta
:nameyourfile
set paths=%func:~8%
echo 请输入函数快捷方式的名称
set /p name=
if "%name%"=="\" goto nameyourfile
if "%name:~-4%"==".cmd" set svp=%paths%%name% & echo 已设置输出路径 & goto letb
if "%name:~-4%"==".bat" set svp=%paths%\%name% & echo 已设置输出路径 & goto letb
goto batorcmd
:letb
echo @echo off >> %svp%
echo 键入 /back 以返回
:letc
title Batch Console ^> Developer ^> Functions ^> Add
set /p func=FUNCTION.ADD^>
if "%func%"=="/back" goto goback
if "%func%"=="/open" start %svp% & goto letb
if "%func%"=="/where" echo 目前存储在 %svp% & goto letb
if "%func%"=="/save" goto savefunc
echo %func% >> %svp% 2>nul || goto func.err
goto letc
:func.err
echo 命令执行不成功。
echo %func% >> %svp%
goto letb
:goback
echo 已将函数快捷方式存储至%svp%
goto main.dev

:funcnumerr
echo 不合适的大小。
goto savefunc

:savefunc
title Batch Console ^> Developer ^> Function ^> Save
set /p funcnum=请输入函数序号(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=请输入函数名称:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main.dev

:function.call
title Batch Console ^> Developer ^> Function ^> Call Functions
echo 输入 back 以返回。
:list.select
set /p ls=请输入函数名称或序号以调用:
if "%ls%"=="back" goto main.dev
set /a dim=%ls%+1 2>nul && call !funcpath%ls%!
call !funcpath%ls%!
echo %ls% 不是存在的函数名称或序号。
pause
goto main.dev
:function.remove
title Batch Console ^> Developer ^> Function ^> Remove
echo 输入 back 以返回。
:del.select
set /p ds=请输入函数名称或者序号以删除:
if "%ds%"=="back" goto main.dev
set /a dim=%ds%+1 2>nul && del !funcpath%ds%! 1>nul 2>nul & echo 成功删除序号为 %ds% 的函数 & goto main.dev
del !funcpath%ds%! 1>nul 2>nul& 成功删除 %ds% & goto main.dev
echo %ds% 不是存在的函数名称或序号。
pause
goto main.dev

::HELPS
:net.help
title Batch Console ^> Help Files ^> Network
cls
echo 欢迎查看帮助
echo.
echo FTP [IP/WWW] 使用内置 FTP 进行传输。
echo UPING [IP/WWW] 无限次(概念上)对地址进行 PING 工作。
echo SPING 进行多线程 PING 工作。
echo TEST [-GFW/nul] 测试是否可以连接上某一区域网络。(留空则为万维网)
pause
goto main.net
:dev.help
title Batch Console ^> Help Files ^> Developer
echo.
echo FUNCTION [-ADD/-REMOVE/-CALL] 对功能的指定性操作。
echo SAVE 存储当前所有已知变量到单独文件。
echo CLEAR 删除所有缓存/临时文件。
echo DEBUG [-view/-edit] [FUNCTION] 处理函数状态。
echo LOCK [-add/-remove] 添加或删除密码保护
pause
goto let
:help
title Batch Console ^> Help Files ^> Normal
cls
echo 欢迎查看帮助。
echo.
echo MODE [MODENAME] 切换到指定模式以完成特殊操作。
echo OUTPUT [STRING] 输出字符串到指定位置。
echo SETOUTPUT [PATH] 设置输出字符串的位置。
echo CONTROL [CPLNAME] 打开指定的控制面板项(CPL)。
echo RELOAD 重新载入初始变量。(已存储的不会被覆盖)
echo DO [-L (times)/-T] [COMMAND] 运行/循环某一指令或文件。
echo CONFIG [STRING] 显示指定项目名称的 Config 信息。
echo WHATSNEW 查看并不专业的基本信息。
echo MAKE [DIR/COM] 批量制作目录或独有指令。
echo DCOM 删除存储的指令。
echo OPEN [PATHNAME] 快速打开目录。
echo SLEEP/SHUTDOWN/RESTART[/O]/HIBERNATE 快速睡眠/关机/重启/休眠。
echo EXIT 不保存并退出。
pause
goto main
:lock.help
echo Usage: LOCK [-add/-remove]
echo 输入后会进入设置向导
echo 设置成功后，此密码将会在除了人为删除的任何情况下存在。
echo 参数 -remove 需要依赖原密码。
goto let
:clear.help
echo Usage: CLEAR
echo 删除未被及时清理的缓存、临时文件。
echo 通常这些文件存在于系统根目录或批处理所在位置。
echo 也许他们是隐藏的。
goto let
:save.help
echo Usage: SAVE
echo 存储变量信息到单独文件。
echo 一般包括 Devmode 的启用情况等。
echo 不包括密码等敏感信息。
goto let
:open.help
echo Usage: OPEN [PATHNAME]
echo 其中 PATHNAME 为基本上可被猜中的名称
echo 比如 programfiles, appdata, desktop 等
echo 由同系列的 PathFinder 移植而来。
echo 目前 PathFinder 已停止更新。
goto int
:sleep.help
echo Usage: SLEEP
echo 调用 RUNDLL 32 实现睡眠功能。
goto int
:shutdown.help
echo Usage: SHUTDOWN
echo 可以按照系统用法进行。
echo 纯输入SHUTDOWN则会立即关机。
goto int
:restart.help
echo Usage: RESTART [/O]
echo 重新启动计算机。
echo 参数 -O 用于在重新启动计算机后自动进入高级管理页面。
echo 常常用作进行硬盘调试和双系统切换。
goto int
:hibernate.help
echo Usage: HIBERNATE
echo 该功能依靠于系统指令 shutdown -h
echo 休眠会保留所有工作与缓存数据，之后完全关闭计算机
echo 并将所有工作与缓存数据存入至硬盘
echo 下一次开启计算机后，会保留关闭前的窗口和任务进度
echo 如果电脑较差，推荐使用休眠而不是关机。
echo 对于休眠时的耗电问题，与关机是一样的，丝毫不费电。
goto int
:make.help
echo Usage: MAKE [DIR/COM]
echo MAKE COM [COMMAND_STRING] 进入指令设置向导。
echo 批量制作目录或制作命令。
echo 对于指令，将存储于data\commands\下。
echo 指令被存储后，除非使用DCOM指令或人为删除，否则不会丢失。
echo 批量制作目录的用法：
echo - make dir [DIRPATH\]
echo 其中 DIRPATH 必须以 \ 结尾
echo 紧跟在 \ 后面的为目录的名称，若要创建多个，以空格分隔
echo Batch Console Dev 保证此指令没有通过 for 实现。
echo e.g. make dir C:\Windows\System32\1 2 3 test helloworld
echo 则会在C:\Windows\System32\目录下创建名为1、2、3、test、helloworld的5个目录。
goto int
:cfg.help
echo Usage: CONFIG [STRING]
echo 目前可用的STRING项包括
echo hardware, system, user, log等
goto int
:do.help
echo Usage: DO [-L (times)/-T] [COMMAND]
echo -L [TIMES] 指定标准循环时间
echo -T 使用换行符(CRLF)代替指定指令
echo 若 TIMES 遇到识别错误，请使用 set loops [NUM] 指令
echo 在此项下，NUM 表示输入 TIMES 的位数，如十位数则为 2.
echo 默认情况下为 1.
goto int
:set.help
echo Usage: SET [VARIABLE_NAME] = [STRING]
echo SET [BC_SETTINGVAR] [BOOL]/[STRING/NUM]
echo 设置一个变量以进行临时调用或修改 Batch Console 的相应变量布尔值
echo 以达到另外的设置效果。一些布尔值在设置后会被保存，不会被重置。
echo 目前受支持的 BC_SETTINGVAR 包括
echo devmode, outputsystemerror, quickdelete, loops等。
goto int
:control.help
echo Usage: CONTROL [CPLNAME] 
echo 打开指定的控制面板项。
echo 目前支持英文名称和CPL文件名。
echo 如: 软件管理可用 appmanager 或 appwiz 代替。
echo e.g. control appmanager
goto int
:test.help
echo Usage: TEST (-GFW)
echo 测试一般网络是否可用或GFW是否不可用。
echo 在一般情况下，对于传统的ping方式，无论是否含有代理
echo 其发包均无法穿越GFW，因此会出现开了代理依然呈现GFW有效的情况。
echo 目前此问题无法被修复。
goto var
:debug.help
echo Usage: DEBUG [-VIEW/-ADD]
echo 增加一个可被调试项或者预览可被调试项。
echo 由于CMD的功能局限性，此功能将处于永久开发状态。
goto let
:function.help
echo Usage: FUNCTION [-ADD/-REMOVE/-CALL]
echo 创建可保存的功能函数(独立BAT文件)，并且可每次重新调取。
echo FUNCTION 的函数与 Batch Console 内部函数不冲突。
echo FUNCTION 的函数无法参与 Debug。
goto let


:devset.intro
set devc-eof=echo off
set devc-eoo=echo on
set devc-cls=cls
set devc-goto=goto enter
set devc-color=goto enter
set devenable=false
set devmode=true
echo cannot read the file in dos mode > C:\Devmode.aty
goto begin

:comload
if exist data\commands\commandname.load goto continue.comload
echo 缺少LOAD文件。 & goto comload.back
:continue.comload
set enablenewcommand=true
call :ReadSpecialLine data\commands\commanding.load 1 commandinm
call :ReadSpecialLine data\commands\commandname.load 1 commandnameo
set commandnamem=%commandnameo:~0,-1%
goto comload.back

:passload.dev
echo 初始化密码
call :ReadSpecialLine %appdata%\Console\dpass.int 1 dev.password
set dev.password=%dev.password:~0,-1%
set dev.lock=true
goto passload.back