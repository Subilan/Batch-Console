:: Base64 Verify
:: 最后修改：2018/5/11
::NEVER RELOAD BY
set custom-tool-enabled=false
:reload
set ext-root=false
set "newcommandsenabled-chinese=禁用"
set "quickdeleteenabled-chinese=禁用"
set "outputsystemerrorenabled-chinese=禁用"
set pi=3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679
set sqrtt=1.4142135623730950488016887242096980785696718753769480731766797379907324784621070388503875343276415727
set e=2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274
set alpha=2.502907875095892822283902873
:: ALPHA 27位
set rho=1.324717957244746025960908854478097340734
:: RHO 39位
set algor=powershell
set nowpath=%~dp0
set data=%nowpath%\data\
set color=0F
set enablenewcommand=false
set newcommand= 
set errormessage.bool=false
if exist %nowpath%data\files\rootLoad.save set ext-root=true
if exist %nowpath%data\files\extDev.save set ext-root=3
if exist %nowpath%data\files\errormessage.save set errormessage.bool=true & goto errmsgload
if exist %nowpath%data\files\custom.toolsave goto toolload
:errmsg.back
:passload.back
:toolload.back
set filepath=C:\
set unman=false
setlocal enabledelayedexpansion
setlocal enableextensions
::MAKEDIR
md %appdata%\Console\ 1>nul 2>nul
md C:\ 1>nul 2>nul
md C:\svd\ 1>nul 2>nul
md %nowpath%data\ 1>nul 2>nul
md %nowpath%data\commands\ 1>nul 2>nul
md %nowpath%data\files\ 1>nul 2>nul
md %nowpath%data\calc\ 1>nul 2>nul
md %nowpath%data\tools
:inv
echo invalid unicode preview. > C:\consetInfo.set
cd.> %systemdrive%\Windows\System32\test.txt || set unman=true
if /i "%unman%"=="false" del %systemdrive%\Windows\System32\test.txt 1>nul 2>nul
del %systemdrive%\Windows\System32\test.txt
if /i "%return%"=="0" goto return.zero
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
if exist C:\svd\opseTrue.svd set outputsystemerror=true & set func.outputsystemerror=  & set outputsystemerrorenabled-chinese=启用& goto skipr
if exist C:\svd\qdFalse.svd set quickdelete=false & set func.quickdelete=  & set quickdeleteenabled-chinese=启用& goto skipr
set quickdelete=true
set func.quickdelete=/f /q
set outputsystemerror=false
set func.outputsystemerror=2^>nul ^|^| goto error
:skipr
:begin
@echo off
goto main

:main
cls
:resolve
if exist %nowpath%data\commands\commanding.load goto comload
:comload.back
if /i "%unman%"=="true" echo 当前可能无法使用管理员权限，可能会影响部分功能的正确执行。
echo Batch Console [v0.7]
echo 输入 help 查看帮助
:int
color %color%
title Batch Console
if /i "%unman%"=="true" title Batch Console - Non Admin
set /p con=%username%~^>
if /i "%con%"=="github" start https://github.com/Subilan/Batch-Console-Alpha & echo 已打开本程序开源页面。 & goto int
if /i "%con%"=="blog" start https://subilan.win/ & echo 已打开作者博客。 & goto int
if /i "%con%"=="build" start https://build.subilan.win/ & echo 已打开构建页面。 & goto int
if /i "%con%"=="minecraft" start https://mc.subilan.win/ & echo 震惊...你居然？！ & goto int
:: 这是我开的一个小型Minecraft服务器啦...有兴趣可以玩玩或者了解一下。
if /i "%con%"=="help" goto help
if /i "%con%"=="?" goto help
if /i "%con:~0,4%"=="tool" goto tool.choose
if /i "%con:~0,4%"=="mode" goto mode.choose
if /i "%con:~0,9%"=="setoutput" goto setoutput
if /i "%con:~0,6%"=="output" goto output.choose
if /i "%con%"=="echo off" echo 无法关闭回显。 & goto int
if /i "%con%"=="echo on" echo 无法打开回显。 & goto int
if /i "%con%"=="@echo off" echo 无法关闭回显。 & goto int
if /i "%con%"=="@echo on" echo 无法打开回显。 & goto int
if /i "%con%"=="cls" echo 无法清屏。 & goto int
if /i "%con:~0,4%"=="goto" goto goto.choose
if /i "%con:~0,3%"=="ftp" goto int
if /i "%con:~0,7%"=="control" goto control.choose
if /i "%con:~0,3%"=="del" goto del.faster
if /i "%con:~0,8%"=="setlocal" echo SETLOCAL 已完全初始化。 & goto int
if /i "%con:~0,3%"=="set" goto set.choose
if /i "%con%"=="reload" goto reload.sure
if /i "%con:~0,5%"=="color" goto color.choose
if /i "%con%"=="help-cmd" help & goto int
if /i "%con%"=="help -cmd" help & goto int
if /i "%con%"=="help -?" goto help.help
if /i "%con:~0,2%"=="do" goto do.choose
if /i "%con:~0,6%"=="config" goto cfg.choose
if /i "%con%"=="about" goto about
if /i "%con:~0,4%"=="make" goto make.choose
if /i "%con%"=="dcom" goto dcom
if /i "%con:~0,5%"=="sleep" goto sleep
if /i "%con:~0,9%"=="hibernate" goto hib
if /i "%con:~0,8%"=="shutdown" goto shutdown
if /i "%con:~0,7%"=="reboot" goto restart
if /i "%con:~0,4%"=="open" goto open.choose
if /i "%con:~0,8%"=="function" goto func.choose
if /i "%con:~0,5%"=="clear" goto clear
if /i "%con:~0,5%"=="debug" goto debug.choose
if /i "%con:~0,4%"=="test" goto test.choose
if /i "%con:~0,5%"=="uping" goto unlimitedPing
if /i "%con:~0,3%"=="ftp" goto ftp
if /i "%con:~0,7%"=="startup" goto startup.choose
if /i "%con%"=="ext" goto extensions
if /i "%con%"=="extensions" goto extensions
if /i "%con%"=="extension" echo 检查拼写: Extension+s & goto int
if /i "%con%"=="sping" goto sping
if /i "%con%"=="wmic" echo 禁止内部切换：WMIC & goto int
if /i "%con%"=="cmd" echo 禁止内部切换：CMD & goto int
if /i "%enablenewcommand%"=="false" goto enter
if /i "%con%"=="%commandnamem%" %commandinm% & goto int
:enter
%con% %func.outputsystemerror%
set con= 
goto int

:goto.choose
if /i "%con:~5%"=="" echo 不能跳转至空白标签。 & goto int
if /i "%con:~5%"==" " echo 不能跳转至空白标签。 & goto int
if /i "%con:~5%"=="-?" goto goto.help
if /i "%con:~5%"=="-list" goto goto.list
set /p test=是否确认跳转至%con:~5%?(y/n)^>
if /i "%test%"=="y" goto %con:~5%
echo 用户取消或输入不正确。
goto int
:goto.list
cls
title 函数库功能表
echo Goto List
echo -----
echo 主函数
echo reload -重载函数
echo begin -起始函数
echo main -主程序
echo resolve -自定义命令读取函数
echo int -主程序的输入
echo tool -工具函数
echo edit -编辑函数
echo color -颜色函数
echo make -MAKE函数
echo ReadSpecialLine -读取函数
echo do -DO函数
echo debug -调试函数
echo show -展示函数
echo log -日志函数
echo extensions -EXT函数
echo -----
echo 分函数
echo choose -判定函数
echo main -菜单/控制台函数
echo help -帮助函数
echo cfg -信息函数
echo -----
echo e.g. 若要访问主程序，则输入 goto main
echo e.g.2 若要访问MAKE函数中的判定函数，则输入 goto make.choose
echo e.g.3 若要访问LOG函数中的信息函数，则输入 goto log.cfg
echo p.s. 对于大部分 goto 跳转的函数来说，可能会出现缺失变量而引起崩溃
pause
goto main

:color.choose
if /i "%con:~6%"=="-?" goto color.help
if /i "%con:~6%"=="0" echo 不能将 COLOR 设置为0
if /i "%con:~6%"=="yellow-milk" set color=FE & goto main
if /i "%con:~6%"=="coding" set color=0A & goto main
if /i "%con:~6%"=="blood" set color=C4 & goto main
if /i "%con:~6%"=="tomato" set color=CF & goto main
color %con:~6%
set color=%con:~6%
goto main

:tool.choose
if /i "%con:~0,5%"=="tools" echo 请检查拼写：tool(没有s) & goto int
if /i "%con:~5%"=="-?" goto tool.help
if /i "%con:~5%"=="-list" goto tool.list
if /i "%con:~5%"=="-add" goto tool.add
if /i "%con:~5%"=="clean" goto toolmain-clean
if /i "%con:~5%"=="%custom-tool-name%" call "%custom-tool-path%"
echo %con:~5% 不是可用的 Tool
goto int
:toolmain-clean
title Batch Clean Tool v1.0
echo 调用 Batch Clean Tool...
echo now mode: debug
ping 127.0.0.1 -n 2 >nul
cls
echo loading log...
echo 已启用 Batch Clean Tool v1.0
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
del /f /s /q %systemdrive%\*.log 
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %systemdrive%\*.old 
del /f /s /q %windir%\*.bak 
del /f /s /q %windir%\prefetch\*.* 
rd /s /q %windir%\temp & md %windir%\temp 
del /f /q %userprofile%\cookies\*.* 
del /f /q %userprofile%\recent\*.* 
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 
del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 
del /f /s /q "%userprofile%\recent\*.*" 
echo 已清除 TEMP 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Local_TEMP 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Dir_TEMP 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 日志 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Check 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Cookies 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Prefetch 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Recent 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 OLD 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 Gid 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 user_Recent 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 user_Tif 数据
ping 127.0.0.1 -n 1 >nul
echo 已清除 user_TEMP 数据
ping 127.0.0.1 -n 2 >nul
color 0A
echo 清理已完成。
ping 127.0.0.1 -n 3 >nul
goto main
:tool.list
cls
title Tool 列表
echo Tool 列表
echo.
echo [1] Batch Clean Tool version 1.0 
echo 别名：clean
echo [2] Custom Tool Genius 1.0
echo 别名：无
if /i "%custom-tool-enabled%"=="true" echo [3] %custom-tool-nameg%
if /i "%custom-tool-enabled%"=="true" echo 别名：%custom-tool-name%
pause
goto main
:tool.add
title Tool 添加
echo 绑定可用的CMD程序
set /p custom-tool-path=Tool 的路径^>
echo 已设置 Tool 的路径为 %custom-tool-path%
echo PS: Tool 的名称会展示在Tool 列表中。
set /p custom-tool-nameg=Tool 的名称^>
echo 已设置 Tool 的名称为%custom-tool-nameg%
echo PS: Tool 的别名会使用在指令中。
set /p custom-tool-name=Tool 的别名^>
echo 核对中...
echo.
echo Tool 路径: %custom-tool-path%
echo Tool 名称：%custom-tool-nameg%
echo Tool 别名：%custom-tool-name%
set /p test=这些信息是否正确？(y/n):
if /i "%test%"=="y" goto tool.add-modify
goto main
:tool.add-modify
echo Tool Enabled. > %nowpath%\data\files\custom.toolsave
echo Tool Path > %nowpath%\data\tools\custom-tool-path.file
echo "%custom-tool-path%" >> %nowpath%\data\tools\custom-tool-path.file
echo Tool Name > %nowpath%\data\tools\custom-tool-name.file
echo %custom-tool-nameg% >> %nowpath%\data\tools\custom-tool-name.file
echo Tool Usage Name > %nowpath%\data\tools\custom-tool-usagename.file
echo %custom-tool-name% >> %nowpath%\data\tools\custom-tool-usagename.file
set custom-tool-enabled=true
echo 成功写入。
echo Tool 载入完成，现在输入 tool %custom-tool-name% 来启动你的自定义程序。
goto int

:startup.choose
if /i "%con:~8%"=="-?" goto startup.help
if /i "%unman%"=="true" goto managementerror
echo 该项可能引起杀软的阻止，按照自己的需求决定。
echo copy %con:~8% "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"
copy "%con:~8%" "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\" || echo 复制失败：阻止。 & goto int
echo 成功添加启动项 %con:~8%
goto int

:open.choose
if /i "%con:~5%"=="-?" goto open.help
if /i "%con:~5%"=="/?" goto open.help
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
if /i "%con:~5%"=="programs32" start "" "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="programfiles32" start "" "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="program files32" start "" "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="program file32" start "" "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="program32" start "" "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="软件32" start "" "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="programs64" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programfiles64" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program files64" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program file64" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program64" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="软件64" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programs" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program files" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program file" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programfiles" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program" start "" "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="软件" start "" "%systemdrive%\Program Files" & goto int
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
if /i "%con:~5%"=="startup" start "" "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp" & goto int
if /i "%con:~5%"=="programdata" start %systemdrive%\ProgramData\ & goto int
if /i "%con:~5%"=="开始菜单" start "" "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\" & goto int
echo 找不到 %con:~5%
goto int

:restart
if /i "%con:~7%"=="-o" shutdown -r -o
if /i "%con:~7%"=="/o" shutdown -r -o
if /i "%con:~7%"=="-?" goto reboot.help
if /i "%con:~7%"=="/?" goto reboot.help
shutdown -r -t 0
:shutdown
if /i "%con:~9%"=="-?" goto shutdown.help
if /i "%con:~9%"=="/?" goto shutdown.help
shutdown -s -t 0
:hib
if /i "%con:~10%"=="-?" goto hibernate.help
if /i "%con:~10%"=="/?" goto hibernate.help
shutdown -h
:sleep
if /i "%con:~6%"=="-?" goto sleep.help
if /i "%con:~6%"=="/?" goto sleep.help
powercfg -h off 1>nul 2>nul
rundll32.exe powrprof.dll,SetSuspendState 0,1,0
powercfg -h on 1>nul 2>nul
goto int

:dcom
if exist %nowpath%data\commands\commanding.load goto dcc
echo 目前不存在被定义的指令。
goto int
:dcc
set /p yn=删除(y/n):
if /i "%yn%"=="y" goto delcommand
echo 用户取消操作。
goto int
:delcommand
del %nowpath%data\commands\commanding.load
del %nowpath%data\commands\commandname.load
echo 已删除%commandnamem%
set enablenewcommand=false
goto int

:make.choose
if /i "%con:~5,3%"=="dir" goto makedir
if /i "%con:~5,3%"=="com" goto makecom
if /i "%con:~5%"=="-?" goto make.help
if /i "%con:~5%"=="/?" goto make.help
echo %con:~5% 不是有效的 make 参数。
goto int

:makecom
set command=%con:~9%
title 指令设置向导 - %command%
echo 目前正在编辑%command%
set /p commc=
echo 是否确定将%command%的效用内容存储为%commc%？
set /p yn=(y/n):
if /i "%yn%"=="y" goto savecom
echo 已放弃编辑 %con:~9%。
goto int
:savecom
echo read.commandname > %nowpath%data\commands\commandname.load
echo %command% >> %nowpath%data\commands\commandname.load
echo read.commanding >> %nowpath%data\commands\commanding.load
echo %commc% >> %nowpath%data\commands\commanding.load
echo 已存储 %command% 内容为 %commc%
call :ReadSpecialLine %nowpath%data\commands\commandname.load 1 commandnamem
call :ReadSpecialLine %nowpath%data\commands\commanding.load 1 commandinm
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
echo 作者博客：https://subilan.win/
echo Github: https://github.com/Subilan/Batch-Console-Alpha
echo.
echo 鸣谢: 某人 会飞的胖鱼Flying(Flyfish233)
pause
goto main

:cfg.choose
if /i "%con:~7%"=="system" goto sys.cfg
if /i "%con:~7%"=="user" goto user.cfg
if /i "%con:~7%"=="hardware" goto hdw.cfg
if /i "%con:~7%"=="/?" goto cfg.help
if /i "%con:~7%"=="-?" goto cfg.help
if /i "%con:~7%"=="log" goto log.cfg
echo 无效的参数 %con:~7%
goto int

::Config
:log.cfg
echo [UpdateLog Config]
echo v0.7 更新日志
echo - open 指令可打开项增加
echo · 修复 open 指令无法打开部分目录的Bug。
echo - Batch Calc 功能性加强
echo · Ivy Project - 大数据加法运算！(BETA)
echo · 这个功能开创了无set /a计算的新时代。
echo - Extensions Beta 加入！
echo · 使用 ext 或 extensions
echo · 这是 Batch Console 最重大的功能性实现
echo · 可能耗时好几个版本，并且预计在1.X时完成
echo · 目前只是雏形，并无实际用处。
echo - Settings 界面加入
echo · 用户可以不使用指令而修改设置，使用 set -gui 
echo - 增加大小写支持
goto int
:sys.cfg
echo [System Config]
echo 加载中...
systeminfo | find "初始安装日期"
systeminfo | find "系统启动时间"
systeminfo | find "BIOS 版本"
systeminfo | find "物理内存总量"
ver | find "4.0." > NUL && echo System Version: Windows 95(太旧了!)
ver | find "4.10." > NUL && echo System Version: Windows 98(太旧了!)
ver | find "4.90." > NUL && echo System Version: Windows ME(太旧了!)
ver | find "3.51." > NUL && echo System Version: Windows NT 3.5(太旧了!)
ver | find "5.0." > NUL && echo System Version: Windows 2000(太旧了!)
ver | find "5.1." > NUL && echo System Version: Windows XP(太旧了!)
ver | find "5.2." > NUL && echo System Version: Windows 2003(太旧了!)
ver | find "6.0." > NUL && echo System Version: Windows Vista(TM)
ver | find "6.1." > NUL && echo System Version: Windows 7(TM)
ver | find "6.2." > NUL && echo System Version: Windows 8(R)
ver | find "10." > NUL && echo System Version: Windows 10(R)
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
if /i "%unman%"=="true" echo 权限不足。 & goto int
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
echo 硬盘容量: %disksize%MiB
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
if /i "%con:~3,2%"=="-l" goto do.loop
if /i "%con:~3,2%"=="-t" goto do.till
if /i "%con:~3,2%"=="/l" goto do.loop
if /i "%con:~3,2%"=="/t" goto do.till
if /i "%con:~3,2%"=="/?" goto do.help
if /i "%con:~3,2%"=="-?" goto do.help
echo DO.CHH 未知参数或指令错误。
goto int

:do.loop
:: a=6即do\n-l\n的格数
:: zl为输入指令的内容
set a=6
set zl=%con%
:xh
if /i "!zl:~%a%,1!"==" " goto over
if /i "!zl:~%a%,1!"=="" goto err
set /a a=%a%+1
goto xh
:over
set /a b=%a%+1
set /a a=%a%-6
set comm=!zl:~%b%!
::命令部分
set time=-1
set loops=!zl:~6,%a%!
::数字部分
:doit
set /a time=%time%+1
if /i "%time%"=="%loops%" goto dol.comp
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
if /i "%tills%"=="back" goto int
%comm%
goto till

:reload.sure
echo 确定重新载入数据?
echo 这会删除您的所有设置与资料。(不包括已保存的)
set /p yn=(Y/N)^>
if /i "%yn%"=="y" goto reload
goto main

:del.faster
del %con:~4% %func.quickdelete%
goto int

:set.choose
if /i "%unman%"=="true" echo fatal: managementerror 无权限。 & goto int
if /i "%con:~4%"=="errormsg -?" goto errmsg.set.help
if /i "%con:~4%"=="color -?" goto color.set.help
if /i "%con:~4%"=="quickdelete -?" goto quickdelete.help
if /i "%con:~4%"=="outputsystemerror -?" goto outputsystemerror.help
if /i "%con:~4%"=="loops -?" goto loopset.help
if /i "%con:~4,8%"=="errormsg" goto errmsg.set
if /i "%con:~4,5%"=="color" goto color.set
if /i "%con:~4,11%"=="quickdelete" goto quickdelete
if /i "%con:~4,17%"=="outputsystemerror" goto outputsystemerror
if /i "%con:~4,5%"=="loops" goto loopset
if /i "%con:~4,16%"=="enablenewcommand" goto enablenewcommands
if /i "%con:~4%"=="/?" goto set.help
if /i "%con:~4%"=="-?" goto set.help
if /i "%con:~4%"=="-gui" goto settings
%con%
goto int

::settings
::GUI
:settings
title Settings - 设置
cls
echo 设置 - GUI
echo 帮助 help 当前可用。
echo [1] 自定义指令 bc.custom-commands.bool (当前:%newcommandsenabled-chinese%)
echo [2] 快速删除 bc.quickdelete.bool (当前:%quickdeleteenabled-chinese%)
echo [3] 输出系统错误 bc.output.systemerror.bool (当前:%outputsystemerrorenabled-chinese%)
echo [4] 错误信息设置 bc.var.errormessage $string
:set.choose-insert
set /p setc=CHOOSE~^>
if /i "%setc%"=="back" goto main
if /i "%setc%"=="help" goto settings.help
if /i "%setc:~0,1%"=="1" if /i "%setc:~2%"=="true" set enablenewcommand=true & set newcommandsenabled-chinese=禁用& echo 已启用自定义指令。 & goto set.choose-insert
if /i "%setc:~0,1%"=="1" if /i "%setc:~2%"=="false" set enablenewcommand=false & set newcommandsenabled-chinese=启用& echo 已禁用自定义指令。  & goto set.choose-insert
if /i "%setc:~0,1%"=="2" if /i "%setc:~2%"=="true" set quickdelete=true & set quickdeleteenabled-chinese=启用& echo 已启用快速删除 & set func.quickdelete=/f /q & del C:\svd\qdFalse.svd 1>nul 2>nul & goto set.choose-insert
if /i "%setc:~0,1%"=="2" if /i "%setc:~2%"=="false" set quickdelete=false & set quickdeleteenabled-chinese=禁用& echo 已禁用快速删除 & set func.quickdelete=  & echo cannot view the file in dos mode > C:\svd\qdFalse.svd & goto set.choose-insert
if /i "%setc:~0,1%"=="3" if /i "%setc:~2%"=="true" set outputsystemerror=true & set outputsystemerrorenabled-chinese=启用& set func.outputsystemerror= & echo 已启用输出系统错误 & echo unkown host. > C:\svd\opseTrue.svd & goto set.choose-insert
if /i "%setc:~0,1%"=="3" if /i "%setc:~2%"=="false" set outputsystemerror=false & set outputsystemerrorenabled-chinese=禁用& set func.outputsystemerror=2^>nul ^|^| goto error & echo 已禁用输出系统错误 & del C:\svd\opseTrue.svd 1>nul 2>nul & goto set.choose-insert
if /i "%setc:~0,1%"=="4" goto settings.errormessage
echo unknown usage.
goto set.choose-insert
:settings.help
echo Usage: [No.] [BOOL] / [No.]
echo 输入指定的序号后输入布尔值。
echo 如要禁用快速删除[2]，那么即输入 2 false 即可。
echo 如要跳转到错误信息设置[4]，那么即输入 4 即可。
goto set.choose-insert
:settings.errormessage
echo default = 默认
set /p errmsg=errormessage.内容~^>
if /i "%errmsg%"=="default" set errormessage.bool=false & echo 已还原至默认信息 & goto int
set errormessage=%errmsg%
echo 已将错误信息设置为%errormessage%。
echo ERRORMESSAGESAVES > %nowpath%\data\files\errormessage.save
echo %errormessage% >> %nowpath%\data\files\errormessage.save
goto set.choose-insert

:enablenewcommands
if /i "%con:~4,16%"=="enablenewcommand" set con=set enablenewcommands %con:~21%
if /i "%con:~22%"=="true" set enablenewcommand=true & set newcommandsenabled-chinese=启用& echo 已启用自定义指令。 & goto int
if /i "%con:~22%"=="false" set enablenewcommand=false & set newcommandsenabled-chinese=禁用 & echo 已禁用自定义指令。  & goto int
echo "%con:~22%" 不是有效的布尔值。
goto int
:loopset
if %con:~10% lss 1 goto lfail
set /a test=%con:~10%+1 || goto lfail
set cut=%con:~10%
goto int
:lfail
echo 不正确的数字 %con:~10%
goto int
:quickdelete
if /i "%con:~16%"=="true" set quickdelete=true & echo 已启用快速删除 & set quickdeleteenabled-chinese=启用& set func.quickdelete=/f /q & del C:\svd\qdFalse.svd 1>nul 2>nul & goto int
if /i "%con:~16%"=="false" set quickdelete=false & echo 已禁用快速删除 & set quickdeleteenabled-chinese=禁用& set func.quickdelete=  & echo cannot view the file in dos mode > C:\svd\qdFalse.svd & goto int
echo "%con:~16%" 不是有效的布尔值。
goto int
:outputsystemerror
if /i "%con:~22%"=="true" set outputsystemerror=true & set outputsystemerrorenabled-chinese=启用& set func.outputsystemerror= & echo 已启用输出系统错误 & echo unkown host. > C:\svd\opseTrue.svd & goto int
if /i "%con:~22%"=="false" set outputsystemerror=false & set outputsystemerrorenabled-chinese=禁用& set func.outputsystemerror=2^>nul ^|^| goto error & echo 已禁用输出系统错误 & del C:\svd\opseTrue.svd 1>nul 2>nul & goto int
:color.set
if /i "%con:~10%"=="red" set color=0C & goto resolve
if /i "%con:~10%"=="blue" set color=01 & goto resolve
if /i "%con:~10%"=="yellow" set color=0E & goto resolve
if /i "%con:~10%"=="green" set color=0A & goto resolve
if /i "%con:~10%"=="purple" set color=05 & goto resolve
if /i "%con:~10%"=="white" set color=0F & goto resolve
if /i "%con:~10%"=="orange" echo 批处理内暂无橙色可供选择。 & goto resolve
if /i "%con:~10%"=="indigo" set color=03 & goto resolve
if %con:~10,1% equ %con:~-1% echo 不能设置相同的颜色: %con:~10% & goto int
set test1=%con:~10,1% & set test2=%con:~-1%
set /a test=%test1%+%test2% && echo 错误的颜色指定：%con:~10%
:cont
set color=%con:~10%
echo 已将默认颜色更换为%color%的指代。
goto resolve
:color.fail
echo FATAL ERROR: 未知的函数引用：test=test1+test2
echo 其输出位于$param %con:~10%
echo 在color上无效。
goto int
:errmsg.set
if /i "%con:~13%"=="default" set errormessage.bool=false & echo 已还原至默认信息 & goto int
set errormessage=%con:~13%
echo 已将错误信息设置为%errormessage%。
echo ERRORMESSAGESAVES > %nowpath%\data\files\errormessage.save
echo %errormessage% >> %nowpath%\data\files\errormessage.save
goto int

:control.choose
if /i "%con:~8%"=="/?" goto control.help
if /i "%con:~8%"=="-?" goto control.help
if /i "%con:~8%"=="internet" control inetcpl.cpl
if /i "%con:~8%"=="web" control inetcpl.cpl
if /i "%con:~8%"=="inetcpl" control inetcpl.cpl
if /i "%con:~8%"=="game" control joy.cpl
if /i "%con:~8%"=="joy" control joy.cpl
if /i "%con:~8%"=="sound" control mmsys.cpl
if /i "%con:~8%"=="mmsys" control mmsys.cpl
if /i "%con:~8%"=="lang" control intl.cpl
if /i "%con:~8%"=="language" control intl.cpl
if /i "%con:~8%"=="area" control intl.cpl
if /i "%con:~8%"=="area and language" control intl.cpl
if /i "%con:~8%"=="intl" control intl.cpl
if /i "%con:~8%"=="ncpa" control ncpa.cpl
if /i "%con:~8%"=="internetmanager" control ncpa.cpl
if /i "%con:~8%"=="netsetup"control netsetup.cpl
if /i "%con:~8%"=="user" control lusrmgr.cpl
if /i "%con:~8%"=="lusrmgr" control lusrmgr.cpl
if /i "%con:~8%"=="odbccp32" control odbccp32.cpl
if /i "%con:~8%"=="ODBC" control odbccp32.cpl
if /i "%con:~8%"=="wscui" control wscui.cpl
if /i "%con:~8%"=="windowssafecenter" control wscui.cpl
if /i "%con:~8%"=="wuaucpl" control wuaucpl.cpl
if /i "%con:~8%"=="windowsupdate" control wuaucpl.cpl
if /i "%con:~8%"=="windowsautoupdate" control wuaucpl.cpl
if /i "%con:~8%"=="igfxcpl" control igfxcpl.cpl
if /i "%con:~8%"=="intel" control igfxcpl.cpl
if /i "%con:~8%"=="intelgraphic" control igfxcpl.cpl
if /i "%con:~8%"=="nvcpl" control nvcpl.cpl
if /i "%con:~8%"=="nvgraphic" control nvcpl.cpl
if /i "%con:~8%"=="access" control access.cpl
if /i "%con:~8%"=="accessiblity" control access.cpl
if /i "%con:~8%"=="appwiz" control appwiz.cpl
if /i "%con:~8%"=="appman" control appwiz.cpl
if /i "%con:~8%"=="appmanager" control appwiz.cpl
if /i "%con:~8%"=="application" control appwiz.cpl
if /i "%con:~8%"=="applications" control appwiz.cpl
if /i "%con:~8%"=="desk" control desk.cpl
if /i "%con:~8%"=="graphic" control desk.cpl
if /i "%con:~8%"=="firewall" control firewall.cpl
if /i "%con:~8%"=="hdwwiz" control hdwwiz.cpl
if /i "%con:~8%"=="addhardware" control hdwwiz.cpl
if /i "%con:~8%"=="sysdm" control sysdm.cpl
if /i "%con:~8%"=="systeminfo" control sysdm.cpl
if /i "%con:~8%"=="system" control sysdm.cpl
goto int

:error
if /i "%errormessage.bool%"=="false" goto normal.error
echo %errormessage%
goto int
:normal.error
echo %con% 不是存在或被定义的指令
goto int

:mode.choose
if /i "%con:~5%"=="wmic" goto main.wmic
if /i "%con:~5%"=="calc" goto main.calc
if /i "%con:~5%"=="/?" goto mode.help
if /i "%con:~5%"=="-?" goto mode.help
if /i "%con:~5%"=="wmic -?" goto mode.help-wmic
if /i "%con:~5%"=="calc -?" goto mode.help-calc
echo 不正确的 MODE 选择: %con:~5%。
goto int

:setoutput
set outputpath=%con:~10%
echo 已将 OUTPUT 出点设置为 %con:~10%
goto int

:output.choose
if /i "%con:~7,2%"=="-?" goto output.help
if /i "%con:~7,2%"=="/?" goto output.help
if /i "%outputpath%"=="none" echo 未设置入点。 & goto int
if /i "%con:~7,2%"=="/c" set out=^> & set cover=true & set num=10
if /i "%con:~7,2%"=="-c" set out=^> & set cover=true & set num=10
echo !con:~%num%! %out% %outputpath%
echo .output^>!con:~%num%! to %outputpath%
set num=7
set out=^>^>
goto int

:sping
echo back 返回至主菜单
echo undo 撤销操作
:sp-lines
set /p lines=请输入 PING 的线程:
if %lines% GTR 15 echo 超过此返回可能会导致大量性能下降。
if /i "%lines%"=="back" goto main
if /i "%lines%"=="undo" echo 尚无可撤销的操作。
goto sp-packages
:sp-packages
set /p packs=请输入每个包的大小(字节):
if %packs% LSS 1 echo 错误的数字选择: 小于1 & goto sp-packages
if %packs% GTR 65500 echo 错误的数字选择: 大于65500 & goto sp-packages
if /i "%packs%"=="back" goto main
if /i "%packs%"=="undo" goto sp-lines
goto sp-times
:sp-times
set /p times=请输入 PING 的次数:
if %times% GTR 500 echo 错误的数字选择: 大于500 & goto sp-times
if %times% LSS 1 echo 错误的数字选择: 小于1 & goto sp-times
if /i "%times%"=="back" goto main
if /i "%times%"=="undo" goto sp-packages
goto sp-ip
:sp-ip
set /p ip=请输入 PING 的域名或 IP 地址:
if /i "%ip:~0,1%"=="0" echo 不能以0开头。
if /i "%ip%"=="back" goto main
if /i "%packs%"=="undo" goto sp-times
pause
set loop=0
set num=1
:getloop
set /a loop=%loop%+1
if /i "%loop%"=="%lines%" goto sp-back
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
if /i "%loop2%"=="%lines%" goto main
del ping%num%.bat
set /a num=%num%+1
goto getloop2

:ftp
set return=0
goto reload

:unlimitedPing
::Just add a "-t"
echo ping %con:~6% -t >> sping.cmd
start sping.cmd
set /p d=按 ENTER 键删除并关闭...
del sping.cmd 1>nul 2>nul || echo 删除失败。
goto main

:test.choose
if /i "%con:~5%"=="/?" goto test.help
if /i "%con:~5%"=="-?" goto test.help
if /i "%con:~5,5%"=="-gfw" goto gfw.test
if /i "%con:~5,5%"=="/gfw" goto gfw.test
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
goto int

:test.error
title Debug - ERROR
color 1C
echo %not-ok% 目前%some%或%other%。
color 1F
goto int

:gfw.test
title Debug
echo 正在测试 GFW 不可用性
ping www.google.com.hk -n 1 >nul && goto gfw.okay
set not-ok=GFW& set some=可用& set other=是VPN协议不支持(很可能)& goto test.error
 :gfw.okay
color 1A
echo GFW 目前不可用。
color 1F
goto int

:return.zero
echo ftp.exe %con:~4% > ftp.cmd
start ftp.cmd
echo 已成功打开关于 %con:~4% 的 FTP 链接。
goto int

:clear
if /i "%con:~6%"=="-?" goto clear.help
if /i "%con:~6%"=="/?" goto clear.help
echo 当前没有缓存/临时文件。
goto int

:debug.choose
if /i "%con:~6%"=="-?" goto debug.help
if /i "%con:~6%"=="/?" goto debug.help
if /i "%con:~6,5%"=="-view" goto debug.view
if /i "%con:~6,5%"=="-edit" goto debug.edit
echo 错误的参数: %con:~6%
goto int

::目前尚未出现可以正常预览已存储function的方法，暂时弃坑 Orz
:debug.view
title debug fatal
echo %con:~12% 不是可被 VIEW 的函数。
goto int

:debug.edit
title debug fatal
echo %con:~12% 不是可被 EDIT 的函数。
goto int

:managementerror
title FATAL: Management Error: Windows UAC denied.
echo FATAL ERROR: 无权限。
pause
goto int

:func.choose
if /i "%con:~9%"=="-?" goto function.help
if /i "%con:~9%"=="/?" goto function.help
cd.>%systemdrive%\Windows\System32\test.txt || goto managementerror
del %systemdrive%\Windows\System32\test.txt
if /i "%con:~9%"=="-add" goto function.add
if /i "%con:~9%"=="-remove" goto function.remove
if /i "%con:~9%"=="-call" goto function.call
echo %con:~9% 不是一个有效的参数。
goto int
:function.add
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
if /i "%func:~0,7%"=="/saveto" goto batorcmd
if /i "%func:~0,6%"=="/input" goto input.batorcmd
echo 您尚未设置 SAVETO 路径或 INPUT 路径，或者输入了错误的指令。
goto leta
:input.batorcmd
if /i "%func:~-1%"=="\" echo 尚未填写文件信息。 & goto leta
if /i "%func:~-4%"==".cmd" set svp=%func:~7% & echo 已设置输出路径 & goto inputsth
if /i "%func:~-4%"==".bat" set svp=%func:~7% & echo 已设置输出路径 & goto inputsth
echo 不能设置非 .CMD 或 .BAT 的文件。
goto leta
:inputsth
echo 已导入 %svp%
set /p funcnum=请输入函数序号(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=请输入函数名称:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main
:batorcmd
if /i "%func:~-1%"=="\" goto nameyourfile
if /i "%func:~-4%"==".cmd" set svp=%func:~8% & echo 已设置输出路径 & goto letb
if /i "%func:~-4%"==".bat" set svp=%func:~8% & echo 已设置输出路径 & goto letb
echo 不能设置非 .CMD 或 .BAT 的文件。
goto leta
:nameyourfile
set paths=%func:~8%
echo 请输入函数快捷方式的名称
set /p name=
if /i "%name%"=="\" goto nameyourfile
if /i "%name:~-4%"==".cmd" set svp=%paths%%name% & echo 已设置输出路径 & goto letb
if /i "%name:~-4%"==".bat" set svp=%paths%\%name% & echo 已设置输出路径 & goto letb
goto batorcmd
:letb
echo @echo off >> %svp%
echo 键入 /back 以返回
:letc
set /p func=FUNCTION.ADD^>
if /i "%func%"=="/back" goto goback
if /i "%func%"=="/open" start %svp% & goto letb
if /i "%func%"=="/where" echo 目前存储在 %svp% & goto letb
if /i "%func%"=="/save" goto savefunc
echo %func% >> %svp% 2>nul || goto func.err
goto letc
:func.err
echo 命令执行不成功。
echo %func% >> %svp%
goto letb
:goback
echo 已将函数快捷方式存储至%svp%
goto main

:funcnumerr
echo 不合适的大小。
goto savefunc

:savefunc
set /p funcnum=请输入函数序号(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=请输入函数名称:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main

:function.call
echo 输入 back 以返回。
:list.select
set /p ls=请输入函数名称或序号以调用:
if /i "%ls%"=="back" goto main
set /a dim=%ls%+1 2>nul && call !funcpath%ls%!
call !funcpath%ls%!
echo %ls% 不是存在的函数名称或序号。
pause
goto main
:function.remove
echo 输入 back 以返回。
:del.select
set /p ds=请输入函数名称或者序号以删除:
if /i "%ds%"=="back" goto main
set /a dim=%ds%+1 2>nul && del !funcpath%ds%! 1>nul 2>nul & echo 成功删除序号为 %ds% 的函数 & goto main
del !funcpath%ds%! 1>nul 2>nul& 成功删除 %ds% & goto main
echo %ds% 不是存在的函数名称或序号。
pause
goto main

::HELPS
:help
title Batch Console ^> Help Files ^> Normal
cls
echo 欢迎查看帮助。
echo.
echo SET [VARIABLE / PARAMETER] [STRING/BOOL] 设置系统变量、自定义变量或者BC变量以达到不一样的设置效果。
echo MODE [MODENAME] 切换到指定模式以完成特殊操作。
echo OUTPUT [STRING] 输出字符串到指定位置。
echo SETOUTPUT [PATH] 设置输出字符串的位置。
echo CONTROL [CPLNAME] 打开指定的控制面板项(CPL)。
echo RELOAD 重新载入初始变量。(已存储的不会被覆盖)
echo DO [-L (times)/-T] [COMMAND] 运行/循环某一指令或文件。
echo CONFIG [STRING] 显示指定项目名称的 Config 信息。
echo MAKE [DIR/COM] 批量制作目录或独有指令。
echo DCOM 删除存储的指令。
echo OPEN [PATHNAME] 快速打开目录。
echo SLEEP/SHUTDOWN/REBOOT[/O]/HIBERNATE 快速睡眠/关机/重启/休眠。
echo EXIT 不保存并退出。
echo FUNCTION [ADD/CALL/REMOVE] 对函数进行编辑和修订工作。
echo CLEAR 清理缓存或临时文件。
echo DEBUG 调试存在的函数。
echo TEST [-GFW] 测试网络/GFW对于BAT协议的可用性
echo UPING [IP ADD] 使用-t参数对某一IP进行Ping操作。
echo SPING 使用进程线程进行同时性多PING。
echo EXT(ENSIONS) 预览 Extensions Beta。
echo.
echo 提示：输入指令后跟上-?参数即可查看详细帮助。
pause
goto main
:startup.help
echo Usage: STARTUP [PATH]
echo 将某个文件添加到开机启动项。
echo 也就是直接用copy复制到startup目录。
echo 可能会引起杀软的阻止，请根据自己的需求酌情允许。
pause
goto int
:sping.help
echo Usage: SPING
echo 同时运行多个CMD线程对某一IP进行ping。
echo 灵感来源于 Flyfish233 在2016年发布的【Flyfish批量ping】
echo 感谢！
pause
goto int
:uping.help
echo Usage: UPING
echo 没什么特别的，就是加了个-t参数。
pause
goto int
:clear.help
echo Usage: CLEAR
echo 删除未被及时清理的缓存、临时文件。
echo 通常这些文件存在于系统根目录或批处理所在位置。
echo 也许他们是隐藏的。
goto int
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
:reboot.help
echo Usage: REBOOT [/O]
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
echo Usage: SET [VARIABLE_NAME] = [STRING] / [PARAMETER]
echo SET [BC_SETTINGVAR] [BOOL]/[STRING/NUM]
echo 设置一个变量以进行临时调用或修改 Batch Console 的相应变量布尔值
echo 以达到另外的设置效果。一些布尔值在设置后会被保存，不会被重置。
echo 目前受支持的 BC_SETTINGVAR 包括
echo outputsystemerror, quickdelete, 
echo loops, color, errormsg等。
echo 有关每一项的相关用法，请使用 set [VARIABLE_NAME] -?
echo 目前支持参数 -gui 来展开用户设置界面而不使用指令设置。
goto int
:errmsg.set.help
echo Usage: set errormsg [STRING]
echo 设置自定义的错误信息，会在执行命令失败后显示。
echo 此信息将会被存储至 data\files\errormessage.save
goto int
:color.set.help
echo Usage: set color [COLORNAME/COLORCODE ATTR]
echo 修改主控页面的颜色。可以直接输入COLORNAME，诸如
echo RED YELLOW GREEN INDIGO BLUE PURPLE
echo 或者颜色的ATTR。
goto int
:quickdelete.help
echo BOOL CONTROL
echo 此项用于控制是否快速删除一个文件，会默认附带有系统权限、管理员权限
echo 和安静模式（如果可用的话）。
echo 适用于del指令。
goto int
:outputsystemerror.help
echo BOOL CONTROL
echo 此项控制是否输出系统错误。若BOOL为true时，在报错时
echo 会主动显示默认的错误或者用户自定义的错误。
echo 若BOOL为false时，在报错时会显示系统的错误。
goto int
:loopset.help
echo Usage: set loops [NUMBERS]
echo 修改 do -l 时循环的判定格数。
echo 在对于字符串截取时，这里的文字决定了截取的位数。
echo 譬如要执行do -l 10 echo 2
echo 那么loops必须为2，因为10是2位数，以此类推。
echo 若是要切换不同位数的数字，需要随时修改该变量。
echo 此项的出现来源于批处理自身的字符控制缺陷。
echo.
echo 若错误的位数与错误的数字相匹配执行，则有可能造成一个指令的无限循环。
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
goto int
:debug.help
echo Usage: DEBUG [-VIEW/-ADD]
echo 增加一个可被调试项或者预览可被调试项。
echo 由于CMD的功能局限性，此功能将处于永久开发状态。
goto int
:function.help
echo Usage: FUNCTION [-ADD/-REMOVE/-CALL]
echo 创建可保存的功能函数(独立BAT文件)，并且可每次重新调取。
echo FUNCTION 的函数与 Batch Console 内部函数不冲突。
echo FUNCTION 的函数无法参与 Debug。
goto int
:mode.help
echo Usage: MODE [MODENAME]
echo 切入专有的模式以便启用插件或者更高效率地进行操作。
echo 目前支持的MODENAME包括但不仅限于
echo wmic, calc
echo dev与net已于0.5版本删除。
echo 有关模式的详细信息，请输入 MODE [MODENAME] -?
goto int
:mode.help-wmic
echo Wmic 模式基于 Windows Wmic 的基础上，在Batch内进行了简化操作。
echo 实现的方式是对于一个主体指令采取do -l 的读取算法而进行变量代入。
echo 在 wmic 模式下输入的一切 dos 指令都会调用 wmic 进行执行。
goto int
:mode.help-calc
echo 该功能由前身 Batch Calc 移植而来。
echo 以后次次更新将独立更新此一个模式程序。
goto int
:calc.help
title Calculator Help
cls
echo 该功能由 Batch Calc v0.1 移植而来
echo 该功能采用的算法是Powershell的算法，并适当地移入了
echo 一些Powershell无法实现的计算方法，从而使方法更加全面。
echo =====================================================
echo 目前支持独立表达式：
echo + - * / 四则运算
echo 运算函数：
echo power -乘方
echo fact(orial) -阶乘
echo sqrt -算数平方根
echo loop -循环
echo addon -范围求和
echo rand(om) -范围随机数
echo copy -复制最近一次的结果
echo show -显示常量(见show -?)
echo back -返回至main
echo ivy -大数据加法(BETA)
echo ======================================================
echo 在0.7版本中加入了大数据加法的运算函数。
echo 该函数主要是计算超过32位精度的整数大数据（理论上可以支持无数位）
echo 算法来自Bat展示讨论群内的某人(是网名)。
echo 该算法在移植过程中出现部分问题，导致在计算超过32位内容时可能出现结果不准确等情况。
pause
goto main.calc
:show.help
title Show Help
echo Usage: SHOW (CONSTANT_NAME) (DIGIT)
echo 支持的CONSTANT_NAME有：
echo pi、e、sqrt2、rho、alpha
echo ========================
echo PI 圆周率π(支持100位)
echo E 自然常数e(支持100位)
echo RHO 塑胶数(支持39位)
echo ALPHA 第二费根鲍姆常数(支持27位)
echo SQRT2 根号下2(支持100位)
echo ========================
echo 以上数值仅作收集用。
pause
goto main.calc
:help.help
echo Usage: HELP [PARAMETER]
echo 显示相关的帮助信息。
echo 目前可用的附带参数有：
echo ?和cmd
echo 不带参数代表显示BC内部的帮助。
goto int
:tool.help
echo Usage: TOOL [-ADD/-LIST / (CUSTOM TOOL NAME)]
echo 进行工具的调用，在作者下一次更新工具之前，你可以自定义一个小工具
echo 并且使它出现在Tool List中且可被 call 调用。
echo 使用 -add 参数来添加一个自定义bat工具。
goto int
:color.help
echo Usage: COLOR [THEMENAME / ATTR]
echo 自定义主程序 main 页面的主题颜色。
echo 目前内置了可代替ATTR的英文，如
echo yellow-milk 或者 coding 等
echo 如果你不习惯用英文，依然可以用ATTR或set指令。
goto int
:: 暂时搁置
:edit.help
echo Usage: EDIT [VAR / PARAMETER] [STRING]
echo 编辑 Batch Console 的内部变量以达到不一样的效果。
echo 起初是无法使用 set 指令直接编辑批处理内部变量的，现在可以了。
echo 参数 -list 可以列出当前版本中所有的内置变量。
echo 但是，此编辑是临时性的，当你重新打开本程序后，原先存储的将会被重新读取，未存储的将会丢失。
goto int
:goto.help
echo Usage: GOTO [FUNCTION / PARAMETER]
echo 跳至 Batch Console 的一个函数。
echo 参数 -list 可以列出当前版本中的所有内置函数。
echo 警告：不推荐使用此指令，因为可能造成程序崩溃或不稳定。
goto int

:comload
if exist %nowpath%data\commands\commandname.load goto continue.comload
echo 缺少LOAD文件。 & goto comload.back
:continue.comload
set enablenewcommand=true
call :ReadSpecialLine %nowpath%data\commands\commanding.load 1 commandinmo
call :ReadSpecialLine %nowpath%data\commands\commandname.load 1 commandnameo
set commandinm=%commandinmo:~0,-1%
set commandnamem=%commandnameo:~0,-1%
set newcommandsenabled-chinese=启用
goto comload.back

:errmsgload
call :ReadSpecialLine1 %nowpath%\data\files\errormessage.save 1 errormessage
echo %errormessage%
goto errmsg.back
:ReadSpecialLine1
setlocal
for /f "delims=" %%a in ('more +%2 %1') do endlocal&set "%3=%%a"&goto:eof

:main.calc
if exist "%nowpath%\data\calc\power_max.txt" (call :ReadSpecialLine %nowpath%\data\calc\power_max.txt 1 powerMAX) else (set powerMAX=30)
cls
:main.calc-skipcls
color 0E
echo Batch Calc [v1.0]
echo 输入 ? 查看帮助
:char-output
if not "%opt%"=="" echo %opt%
:char
set /p cal=
if /i "%cal%"=="help" goto calc.help
if /i "%cal%"=="?" goto calc.help
if /i "%cal%"=="power" goto calc.power
if /i "%cal%"=="fact" goto calc.factorial
if /i "%cal%"=="factorial" goto calc.factorial
if /i "%cal%"=="rand" goto calc.random
if /i "%cal%"=="random" goto calc.random
if /i "%cal%"=="loop" goto calc.loop
if /i "%cal%"=="addon" goto calc.loop-addon
if /i "%cal%"=="sqrt" goto calc.sqrt
if /i "%cal%"=="back" goto main
if /i "%cal%"=="copy" echo %cliphood% | clip & echo %cliphood% 已复制到剪贴板 & goto char
if /i "%cal%"=="ivy" goto calc.ivy
if /i "%cal:~0,4%"=="show" goto calc.show
call :calc.core
:calc.output
set cliphood=%opt%
goto char-output

:calc.ivy
cls
:set1.choiceback
cls
title Ivy Project [BETA]
echo Beta Core [v0.1]
echo 输入完成后按 y 确认，b 返回上一步。
echo 请输入"加数1":
choice /c 1234567890yb /n /m "%shu1%"
if "%errorlevel%"=="1" set shu1=%shu1%1&set /a s1c=%s1c%+1
if "%errorlevel%"=="2" set shu1=%shu1%2&set /a s1c=%s1c%+1
if "%errorlevel%"=="3" set shu1=%shu1%3&set /a s1c=%s1c%+1
if "%errorlevel%"=="4" set shu1=%shu1%4&set /a s1c=%s1c%+1
if "%errorlevel%"=="5" set shu1=%shu1%5&set /a s1c=%s1c%+1
if "%errorlevel%"=="6" set shu1=%shu1%6&set /a s1c=%s1c%+1
if "%errorlevel%"=="7" set shu1=%shu1%7&set /a s1c=%s1c%+1
if "%errorlevel%"=="8" set shu1=%shu1%8&set /a s1c=%s1c%+1
if "%errorlevel%"=="9" set shu1=%shu1%9&set /a s1c=%s1c%+1
if "%errorlevel%"=="10" set shu1=%shu1%0&set /a s1c=%s1c%+1
if "%errorlevel%"=="11" goto set2
if "%errorlevel%"=="b" call :ivy.clear & goto main.calc
goto set1.choiceback
:set2
:set2.choiceback
cls
title Ivy Project [BETA]
echo Beta Core [v0.1]
echo 输入完成后按 y 确认。
echo 请输入"加数2":
choice /c 1234567890yb /n /m "%shu2%"
if "%errorlevel%"=="1" set shu2=%shu2%1&set /a s2c=%s2c%+1
if "%errorlevel%"=="2" set shu2=%shu2%2&set /a s2c=%s2c%+1
if "%errorlevel%"=="3" set shu2=%shu2%3&set /a s2c=%s2c%+1
if "%errorlevel%"=="4" set shu2=%shu2%4&set /a s2c=%s2c%+1
if "%errorlevel%"=="5" set shu2=%shu2%5&set /a s2c=%s2c%+1
if "%errorlevel%"=="6" set shu2=%shu2%6&set /a s2c=%s2c%+1
if "%errorlevel%"=="7" set shu2=%shu2%7&set /a s2c=%s2c%+1
if "%errorlevel%"=="8" set shu2=%shu2%8&set /a s2c=%s2c%+1
if "%errorlevel%"=="9" set shu2=%shu2%9&set /a s2c=%s2c%+1
if "%errorlevel%"=="10" set shu2=%shu2%0&set /a s2c=%s2c%+1
if "%errorlevel%"=="11" goto over
if "%errorlevel%"=="12" call :ivy.clear & goto main.calc
goto set2.choiceback
:over
set s1=%shu1:~-1%
set s2=%shu2:~-1%
set wz=-1
:xh
call :add.core
set jieguo=%jg%%jieguo%
set /a lswz1=%s1c%+%wz%
set /a lswz2=%s2c%+%wz%
set /a wz=%wz%-1
set s1=!shu1:~%wz%,1!
set s2=!shu2:~%wz%,1!
if %lswz1% leq 0 set s1=0
if %lswz2% leq 0 set s2=0
if %lswz1% leq 0 if %lswz2% leq 0 if "%jws%" equ "" goto s2over
goto xh
:s2over
cls
set opt=%jieguo%
set cliphood=%jieguo%
call :ivy.clear
goto main.calc
:ivy.clear
set shu1= 
set shu2= 
set s1= 
set s2= 
set jg= 
set jw= 
set jws= 
set jieguo= 
set lswz1= 
set lswz2= 
set s1c= 
set s2c= 
set wz= 

::CORE
:add.core
:: 核心算法by 某人
if "%s1%"=="0" if "%s2%"=="0" set jg=0&set "jw="
if "%s1%"=="1" if "%s2%"=="0" set jg=1&set "jw="
if "%s1%"=="2" if "%s2%"=="0" set jg=2&set "jw="
if "%s1%"=="3" if "%s2%"=="0" set jg=3&set "jw="
if "%s1%"=="4" if "%s2%"=="0" set jg=4&set "jw="
if "%s1%"=="5" if "%s2%"=="0" set jg=5&set "jw="
if "%s1%"=="6" if "%s2%"=="0" set jg=6&set "jw="
if "%s1%"=="7" if "%s2%"=="0" set jg=7&set "jw="
if "%s1%"=="8" if "%s2%"=="0" set jg=8&set "jw="
if "%s1%"=="9" if "%s2%"=="0" set jg=9&set "jw="
if "%s1%"=="0" if "%s2%"=="1" set jg=1&set "jw="
if "%s1%"=="1" if "%s2%"=="1" set jg=2&set "jw="
if "%s1%"=="2" if "%s2%"=="1" set jg=3&set "jw="
if "%s1%"=="3" if "%s2%"=="1" set jg=4&set "jw="
if "%s1%"=="4" if "%s2%"=="1" set jg=5&set "jw="
if "%s1%"=="5" if "%s2%"=="1" set jg=6&set "jw="
if "%s1%"=="6" if "%s2%"=="1" set jg=7&set "jw="
if "%s1%"=="7" if "%s2%"=="1" set jg=8&set "jw="
if "%s1%"=="8" if "%s2%"=="1" set jg=9&set "jw="
if "%s1%"=="9" if "%s2%"=="1" set jg=0&set jw=1
if "%s1%"=="0" if "%s2%"=="2" set jg=2&set "jw="
if "%s1%"=="1" if "%s2%"=="2" set jg=3&set "jw="
if "%s1%"=="2" if "%s2%"=="2" set jg=4&set "jw="
if "%s1%"=="3" if "%s2%"=="2" set jg=5&set "jw="
if "%s1%"=="4" if "%s2%"=="2" set jg=6&set "jw="
if "%s1%"=="5" if "%s2%"=="2" set jg=7&set "jw="
if "%s1%"=="6" if "%s2%"=="2" set jg=8&set "jw="
if "%s1%"=="7" if "%s2%"=="2" set jg=9&set "jw="
if "%s1%"=="8" if "%s2%"=="2" set jg=0&set jw=1
if "%s1%"=="9" if "%s2%"=="2" set jg=1&set jw=1
if "%s1%"=="0" if "%s2%"=="3" set jg=3&set "jw="
if "%s1%"=="1" if "%s2%"=="3" set jg=4&set "jw="
if "%s1%"=="2" if "%s2%"=="3" set jg=5&set "jw="
if "%s1%"=="3" if "%s2%"=="3" set jg=6&set "jw="
if "%s1%"=="4" if "%s2%"=="3" set jg=7&set "jw="
if "%s1%"=="5" if "%s2%"=="3" set jg=8&set "jw="
if "%s1%"=="6" if "%s2%"=="3" set jg=9&set "jw="
if "%s1%"=="7" if "%s2%"=="3" set jg=0&set jw=1
if "%s1%"=="8" if "%s2%"=="3" set jg=1&set jw=1
if "%s1%"=="9" if "%s2%"=="3" set jg=2&set jw=1
if "%s1%"=="0" if "%s2%"=="4" set jg=4&set "jw="
if "%s1%"=="1" if "%s2%"=="4" set jg=5&set "jw="
if "%s1%"=="2" if "%s2%"=="4" set jg=6&set "jw="
if "%s1%"=="3" if "%s2%"=="4" set jg=7&set "jw="
if "%s1%"=="4" if "%s2%"=="4" set jg=8&set "jw="
if "%s1%"=="5" if "%s2%"=="4" set jg=9&set "jw="
if "%s1%"=="6" if "%s2%"=="4" set jg=0&set jw=1
if "%s1%"=="7" if "%s2%"=="4" set jg=1&set jw=1
if "%s1%"=="8" if "%s2%"=="4" set jg=2&set jw=1
if "%s1%"=="9" if "%s2%"=="4" set jg=3&set jw=1
if "%s1%"=="0" if "%s2%"=="5" set jg=5&set "jw="
if "%s1%"=="1" if "%s2%"=="5" set jg=6&set "jw="
if "%s1%"=="2" if "%s2%"=="5" set jg=7&set "jw="
if "%s1%"=="3" if "%s2%"=="5" set jg=8&set "jw="
if "%s1%"=="4" if "%s2%"=="5" set jg=9&set "jw="
if "%s1%"=="5" if "%s2%"=="5" set jg=0&set jw=1
if "%s1%"=="6" if "%s2%"=="5" set jg=1&set jw=1
if "%s1%"=="7" if "%s2%"=="5" set jg=2&set jw=1
if "%s1%"=="8" if "%s2%"=="5" set jg=3&set jw=1
if "%s1%"=="9" if "%s2%"=="5" set jg=4&set jw=1
if "%s1%"=="0" if "%s2%"=="6" set jg=6&set "jw="
if "%s1%"=="1" if "%s2%"=="6" set jg=7&set "jw="
if "%s1%"=="2" if "%s2%"=="6" set jg=8&set "jw="
if "%s1%"=="3" if "%s2%"=="6" set jg=9&set "jw="
if "%s1%"=="4" if "%s2%"=="6" set jg=0&set jw=1
if "%s1%"=="5" if "%s2%"=="6" set jg=1&set jw=1
if "%s1%"=="6" if "%s2%"=="6" set jg=2&set jw=1
if "%s1%"=="7" if "%s2%"=="6" set jg=3&set jw=1
if "%s1%"=="8" if "%s2%"=="6" set jg=4&set jw=1
if "%s1%"=="9" if "%s2%"=="6" set jg=5&set jw=1
if "%s1%"=="0" if "%s2%"=="7" set jg=7&set "jw="
if "%s1%"=="1" if "%s2%"=="7" set jg=8&set "jw="
if "%s1%"=="2" if "%s2%"=="7" set jg=9&set "jw="
if "%s1%"=="3" if "%s2%"=="7" set jg=0&set jw=1
if "%s1%"=="4" if "%s2%"=="7" set jg=1&set jw=1
if "%s1%"=="5" if "%s2%"=="7" set jg=2&set jw=1
if "%s1%"=="6" if "%s2%"=="7" set jg=3&set jw=1
if "%s1%"=="7" if "%s2%"=="7" set jg=4&set jw=1
if "%s1%"=="8" if "%s2%"=="7" set jg=5&set jw=1
if "%s1%"=="9" if "%s2%"=="7" set jg=6&set jw=1
if "%s1%"=="0" if "%s2%"=="8" set jg=8&set "jw="
if "%s1%"=="1" if "%s2%"=="8" set jg=9&set "jw="
if "%s1%"=="2" if "%s2%"=="8" set jg=0&set jw=1
if "%s1%"=="3" if "%s2%"=="8" set jg=1&set jw=1
if "%s1%"=="4" if "%s2%"=="8" set jg=2&set jw=1
if "%s1%"=="5" if "%s2%"=="8" set jg=3&set jw=1
if "%s1%"=="6" if "%s2%"=="8" set jg=4&set jw=1
if "%s1%"=="7" if "%s2%"=="8" set jg=5&set jw=1
if "%s1%"=="8" if "%s2%"=="8" set jg=6&set jw=1
if "%s1%"=="9" if "%s2%"=="8" set jg=7&set jw=1
if "%s1%"=="0" if "%s2%"=="9" set jg=9&set "jw="
if "%s1%"=="1" if "%s2%"=="9" set jg=0&set jw=1
if "%s1%"=="2" if "%s2%"=="9" set jg=1&set jw=1
if "%s1%"=="3" if "%s2%"=="9" set jg=2&set jw=1
if "%s1%"=="4" if "%s2%"=="9" set jg=3&set jw=1
if "%s1%"=="5" if "%s2%"=="9" set jg=4&set jw=1
if "%s1%"=="6" if "%s2%"=="9" set jg=5&set jw=1
if "%s1%"=="7" if "%s2%"=="9" set jg=6&set jw=1
if "%s1%"=="8" if "%s2%"=="9" set jg=7&set jw=1
if "%s1%"=="9" if "%s2%"=="9" set jg=8&set jw=1
if "%jws%"=="1" set /a jg=%jg%+1
if %jg% lss 10 (set jws=%jw%) else (set /a "jws=1,jg-=10")
:calc.core
for /f "delims=" %%a in ('powershell "%cal%"') do set opt=%%a & goto :eof

:calc.err
echo 不正确的表达式或函数。
goto char

:calc.power
set /p dishu=请输入"底数":
set /p zhishu=请输入"指数":
if %zhishu% gtr %powerMAX% echo 限制：指数不能大于%powerMAX%。 & goto char
echo 将计算%dishu%^^%zhishu%
pause
echo on LOOP at %dishu% %zhishu%
echo loop core (r) 2018
echo set times=1
echo local respond in WIN platform
set time=1
set dimshu=%dishu%
ping 127.0.0.1 -n 1 >nul
cls
goto power.loop
:power.loop
set /a dimshu=%dimshu%*%dishu%
set /a time=%time%+1
if /i "%time%"=="%zhishu%" goto power.end
goto power.loop
:power.end
set opt=%dimshu%
set cliphood=%opt%
goto char-output

:calc.factorial
set /p fact=请输入"阶乘操作数":
if %fact% GTR 16 echo 限制：阶乘操作数不能大于16。 & goto char
if /i "%fact%"=="1" echo 1 & set cliphood=1 & goto char
if /i "%fact%"=="0" echo 0 & set cliphood=0 & goto char
goto factorial
:factorial
set a=%fact%
set b=%fact%
:fact.loop
set /a a=%a%-1
set /a b=%b%*%a%
if %errorlevel% NEQ 0 echo 未知错误：返回值NEQ 0 & goto char
if /i "%a%"=="1" set opt=%b% & set cliphood=%b% & goto char-output
goto fact.loop

:calc.random
set /p r1=请输入"范围最小值":
set /p r2=请输入"范围最大值":
if %r2% LSS %r1% echo 错误：最大值最小值冲突。 & goto char
set /a r3=%r2%-%r1%-1
set /a randem=%random%%%%r3% +%r1%
echo %randem%
set cliphood=%randem%
goto char

:calc.sqrt
set /p sqrt=请输入"被开方数":
if %sqrt% LSS 1 echo 不能计算虚数。 & goto char
if %sqrt% GTR 214748 echo 限制：被开方数不能大于2147428。 & goto char
:sqroot
set a=%sqrt%
set /a a*=10000,b=a
for /l %%a in (1,1,100) do set /a b=(b+a/b)/2
set /a c=b*b,a/=10000
set sqr=%b:~,-2%.%b:~-2%
set sqrr=%b:~-2%
if /i "%sqrr%"=="00" set sqr=%sqr:~0,-3% & set cliphood=%sqr:~0,-3% & echo %sqr:~0,-3% & goto char
echo 约%sqr%
set cliphood=%sqr%
goto char

:calc.loop
set times= 
set time= 
set /p times=请输入"循环次数":
set /a test=%times%+1 || goto loop.fail
set /p mem=请输入"操作数"(即算式最开头的那个数, 如6):
set /p doin=请输入"操作表达式"(即要对这个数操作的表达式, 如+72-9*3):
echo 循环：执行%%number%%%doin% 并进行输出
echo 任务规划显示：启用
set /a test=%mem%%doin% 1>nul 2>nul || goto loop.fail
set time=0
:loopon
set /a mem=%mem%%doin%
set /a time=%time%+1
if %time% EQU %times% goto loopend
goto loopon
:loopend
set opt=%mem%
set cliphood=%opt%
goto char-output
:loop.fail
echo 错误：未知的表达式或数字
goto char

:calc.loop-addon
set /p from=请输入"起始项":
if %from% lss 0 echo 目前无法进行负数求和运算。 & goto char
set /p to=请输入"终项":
if %to% lss %from% echo 错误：终末项大小冲突。 & goto char
set /a test=%from%+%to% || goto addon.fail
set /a adden=%from%+1
set test=%from%
:addon.loop
set /a test=%test%+%adden%
set /a adden=%adden%+1
if %adden% equ %to% goto addon.end
goto addon.loop
:addon.end
set /a opt=%test%+%to%
if %to% equ 1 set opt=%from%
set cliphood=%opt%
goto char-output
:addon.fail
echo 无法识别的项数。
goto char

:calc.show
if /i "%cal:~5%"=="-?" goto show.help
if /i "%cal:~5,2%"=="pi" goto show.pi
if /i "%cal:~5,3%"=="rho" goto show.rho
if /i "%cal:~5,1%"=="e" goto show.e
if /i "%cal:~5,5%"=="sqrt2" goto show.sqrtt
if /i "%cal:~5,5%"=="alpha" goto show.alpha
echo %cal:~5% 不是一个有效的常量名称。
goto char

:show.pi
set nume=%cal:~8%
if %nume% lss 1 echo 最低支持1位π。 & goto char
if %nume% gtr 100 echo 最高支持100位π。 & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!pi:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.e
set nume=%cal:~7%
if %nume% lss 1 echo 最低支持1位e。 & goto char
if %nume% gtr 100 echo 最高支持100位e。 & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!e:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.rho
set nume=%cal:~9%
if %nume% lss 1 echo 最低支持1位rho。 & goto char
if %nume% gtr 39 echo 最高支持39位rho。 & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!rho:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.sqrtt
set nume=%cal:~11%
if %nume% lss 1 echo 最低支持1位sqrt2。 & goto char
if %nume% gtr 100 echo 最高支持100位sqrt2。 & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!sqrtt:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.alpha
set nume=%cal:~11%
if %nume% lss 1 echo 最低支持1位alpha。 & goto char
if %nume% gtr 27 echo 最高支持27位alpha。 & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!alpha:~0,%nume%!
set cliphood=%show%
echo %show%
goto char

:show.err
echo 错误：无法识别的截取位数。
goto char

::////////////////////////////////////////////////////////////
::///////////////////////////////////////////////////////////
:://////////////////////////////////////////////////////////
:://///////////////////////////////////////////////////////
::////////////////////////////////////////////////////////
::///////////////////////////////////////////////////////
:://////////////////////////////////////////////////////
:://///////////////////////////////////////////////////
::////////////////////////////////////////////////////
:wmic.help
title Wmic //%username%-LOCALHOST -task HelpFunction -add -mode:wmic
echo WMIC模式 帮助
echo.
echo wmic 模式目前只是一个命令输入的简化版
echo 在未来会进行相关的改动并加入专有指令。
echo 若要直接执行wmic 指令，可以直接输入回车。
echo 例如，要进行desktop get name，则直接输入回车即可。
echo 输入 -? 查看wmic内置帮助。
echo 输入back返回。
pause
goto main.wmic
:main.wmic
cls
color 0A
title Wmic //%username%-LOCALHOST
echo Wmic [vBeta]
echo 输入 ? 以查看帮助
:sol
set /p wim=
if /i "%wim%"=="?" goto wmic.help
if /i "%wim%"=="back" goto main
if /i "%wim%"=="-?" wmic -?
wmic %wim%
goto sol

:toolload
if not exist "%nowpath%\data\tools\custom-tool-name.file" set custom-tool-enabled=false & del %nowpath%\data\files\custom.toolsave & goto toolload.back
if not exist "%nowpath%\data\tools\custom-tool-usagename.file" set custom-tool-enabled=false & del %nowpath%\data\files\custom.toolsave & goto toolload.back
if not exist "%nowpath%\data\tools\custom-tool-path.file" set custom-tool-enabled=false & del %nowpath%\data\files\custom.toolsave & goto toolload.back
call :ReadSpecialLine "%nowpath%\data\tools\custom-tool-name.file" 1 custom-tool-nameg
set custom-tool-nameg=%custom-tool-nameg:~0,-1%
call :ReadSpecialLine "%nowpath%\data\tools\custom-tool-usagename.file" 1 custom-tool-name
set custom-tool-name=%custom-tool-name:~0,-1%
call :ReadSpecialLine "%nowpath%\data\tools\custom-tool-path.file" 1 custom-tool-path
set custom-tool-path=%custom-tool-path:~0,-1%
set custom-tool-enabled=true
goto toolload.back

::Extensions Main
:extensions
if "%ext-root%"=="true" set workgroup=root
if "%ext-root%"=="false" set workgroup=%username%
if "%ext-root%"=="3" set workgroup=dev
if "%ext-root%"=="" echo 错误的框架进入权限。 & goto int
if "%ext-root%"==" " echo 错误的框架进入权限。 & goto int
if not defined ext-root echo 错误的框架定义。 & goto int
cls
echo Extensions Module [r1.0]
echo 输入 ? 查看帮助。
:cov
title Extensions - 模组框架管理
set /p ext=EXTENSIONS@%workgroup%^>
if "%ext%"=="?" goto extensions.help
if "%ext%"=="root" goto extensions.root
if "%ext%"=="/back" goto main
if "%ext%"=="/list" goto extensions.list
if "%ext:~0,6%"=="/check" goto extensions.check
:: Package
if "%ext%"=="bc.core7" echo boot -i bc.core7 safe & goto int
if "%ext%"=="beer128" echo 找不到存在的对应函数标签，这可能是一个内置逻辑函数。 & goto cov
if "%ext%"=="v64v" echo boot -i visualstudiobase64verify safe & echo 找不到指定的文件。 & goto cov
if "%ext%"=="calc.core2" echo boot -i calc.core & echo 不正确的输入，Calc Core 无法处理。 & goto cov
if "%ext%"=="rioeivy" echo boot -i rioeivy & goto calc.ivy
if "%ext%"=="ext" echo boot -i ext & echo redirect to function label :cov & goto cov
echo "%ext%"不是有效的入点和出点，也不是有效的读取文件。
goto cov

:extensions.help
echo do -i call help in process.extensions bc perm:high admin /all
cls
title Help - Extensions
echo Extensions 帮助
echo 使用含 / 的指令来向 Extensions CORE 发送指令。
echo 直接输入 Extensions 的包名来入/出 Extensions。
echo.
echo /list 显示 Extensions 的列表
echo /check [No.] 显示列表中对应序号的 Extensions 包名
echo /back 返回主函数
echo.
pause
goto extensions
:extensions.list
echo do -i show info /extensions local perm:high super root
if "%ext-root%"=="false" echo 权限不足: Localgroup Root & goto cov
echo Extensions 列表
echo [1] Batch Console CORE v0.7
echo [2] Boot Engine EXE Re: Github v1.28
echo [3] Visual Studio Code Base64 Verify
echo [4] Batch Calculator CORE v0.2
echo [5] Ivy v0.1
echo [6] Extensions CORE vR
goto cov

:extensions.check
if "%ext:~7%"=="1" echo Check: 包名 bc.core7 & goto cov
if "%ext:~7%"=="2" echo Check: 包名 beer128 & goto cov
if "%ext:~7%"=="3" echo Check: 包名 v64v & goto cov
if "%ext:~7%"=="4" echo Check: 包名 calc.core2 & goto cov
if "%ext:~7%"=="5" echo Check: 包名 rioeivy & goto cov
if "%ext:~7%"=="6" echo Check: 包名 ext & goto cov
echo %ext:~7%不是已存在的Extensions。
goto cov

:extensions.root
title 入点判定
if "%unman%"=="true" echo 不正确的选项: No such permission from Windows & goto cov
title 入点: Node @ "Root 激活程序"
echo 您正在尝试激活"Root 激活程序"，请问是否继续?
echo Y = YES, N = NO, M = More Information
:extensions.root.selection
set /p test=(y/n/m):
if "%test%"=="y" goto extensions.root-inside
if "%test%"=="n" goto extensions
if "%test%"=="m" goto extensions.about.root
echo 错误的选择: %test%
goto extensions.root.selection
:extensions.about.root
echo 关于 "Root 激活程序"
echo 名称: Root 激活程序
echo 作者: Subilan
echo 版本: vR
echo 兼容性: Batch Console v0.7
echo Ext类型: bti-ext
goto extensions.root.selection
:extensions.root-inside
echo do -i extensions.root extensions RootManager /add %username%
ping 127.0.0.1 -n 1 >nul
echo do -i extensions.root-inside extensions RootManager /open @source
ping 127.0.0.1 -n 2 >nul
echo calling from: Extensions Root Core
ping 127.0.0.1 -n 1 >nul
cls
echo 获取权限中: Root
cd.> %nowpath%\data\files\rootLoad.save
set ext-root=true
set workgroup=root
goto extensions

