:: 新的重新构建版本
@echo off
color 0F
if exist install.temp echo 您尚未进行完全安装。 & pause & exit
set admin-name=administrator
set data=<%systemdrive%\Users\%username%\Desktop\data.donotdelete && goto data-verify-next || echo 您尚未部署完成 Batch Console，请运行 setup.cmd 部署。 & pause & exit
:data-verify-next
echo 欢迎！%username%。
move %des
ping 127.0.0.1 -n 3 >nul
goto management-get
:: 变量说明
:: domain-function-name 代表当前 mode 的主菜单函数名称
:: error-code 用于调用 error 函数进行准确的错误提示
:: 使用独立的安装程序进行设置，大量简化开头的代码数量
set manage-permission=false
if "%management-if%"=="mandatory" goto management-get
if "%management-if%"=="normal" goto management-verify

::management.mandatory
:management-get
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
set title=Batch Console - 控制台
echo 授权成功...
set manage-permission=true
goto main
:: From https://www.zhihu.com/question/34541107/answer/91159429

:: management.normal
:management-verify
cd.> %systemdrive%\Windows\System32\1.txt || set manage-permission=false & goto main
del %systemdrive%\Windows\System32\1.txt
set manage-permission=true
if "%manage-permission%"=="true" (set "title=Batch Console - 控制台") else (set "title=Batch Console - 控制台(Non Admin)")
goto main

:main
setlocal enabledelayedexpansion
cls
echo Batch Console [v1.0]
set domain-function-name=main
echo 输入 help 查看帮助
:input-main
title %title%
set /p input=main^>
if /i "%input%"=="help" goto help
if /i "%input%"=="echo off" set error-code=programneed& goto error
if /i "%input%"=="echo on" set error-code=programneed& goto error
if /i "%input%"=="@echo off" set error-code=programneed& goto error
if /i "%input%"=="@echo on" set error-code=programneed& goto error
if /i "%input:~0,8%"=="setlocal" set error-code=programneed& goto error
if /i "%input:~0,8%"=="endlocal" set error-code=programneed& goto error
if /i "%input:~0,4%"=="web:" goto web-choose
if /i "%input:~0,5%"=="mode:" goto mode-choose
if /i "%input:~0,5%"=="help:" goto help-choose
if /i "%input:~0,5%"=="open:" goto open-choose
if /i "%input:~0,3%"=="bc:" goto bc-choose
::administrator permission needed
if "%manage-permission%"=="true" if /i "%input:~0,7%"=="create:" goto create-choose
if "%manage-permission%"=="true" if /i "%input:~0,7%"=="system:" goto system-choose
if "%manage-permission%"=="true" if /i "%input:~0,4%"=="man:" goto manage-choose
%input% && goto input-main || set error-code=systemcommanderror& goto error
goto input-main

::BC
:bc-choose
find "%input:~3%" "Batch Console.cmd" 1>nul 2>nul && goto bc-goto || set error-code=unknownlabel& goto error
:bc-goto
goto %input:~3%
:log
cls
title Batch Console - 日志 / 基本
echo Batch Console Log
echo Version 1.0.0
echo.
echo 1. 重构代码、指令、文件架构和函数跳转、判定方式
echo 2. 适当减少冗余功能并会在未来添加
echo 3. 采用 APR 28 内核的冒号指令集，若您不喜欢，将会在未来做出更改
echo 4. 添加了强制性管理员权限代码(看起来更像病毒了呢...)
pause
goto main
:about
cls
title Batch Console - 关于
echo About Batch Console
echo 移植自 Batch Console Alpha 项目
echo 且正式转入正式版，这离不开任何人的支持
echo 以及在 Github 上给我第一个 Star 的朋友。
echo.
echo 鸣谢：会飞的胖鱼Flying Crazyman(←dalao) 里奥_某人
pause
goto main

::OPEN
:open-choose
if not "%input:~5,1%"=="[" goto open-apps
if "%input:~5,5%"=="[app]" goto open-app
if "%input:~5,13%"=="[application]" goto open-application
if "%input:~5,5%"=="[web]" goto open-web
if "%input:~5,9%"=="[website]" goto open-website
if "%input:~5,5%"=="[dir]" goto open-dir
if "%input:~5,11%"=="[directory]" goto open-directory
set error-code=unknownparameter& goto error
:open-app
start "" "%input:~10%"
echo 已打开%input:~10%
goto input-main
:open-application
start "" "%input:~18%"
echo 已打开%input:~18%
goto input-main
:open-web
if not "%input:~0,4%"=="http" set input=open:[web]http://%input:~10%/
start "%input:~10%%"
echo 已打开%input:~10%
goto input-main
:open-website
if not "%input:~0,4%"=="http" set input=open:[web]http://%input:~14%/
start "%input:~14%%"
echo 已打开%input:~14%
goto input-main
:open-dir
start "%input:~10%"
echo 已打开%input:~10%
goto input-main
:open-directory
start "%input:~16%"
echo 已打开%input:~16%
goto input-main
:open-apps
if /i "%input:~5%"=="Program Files" start "%systemdrive%\Program Files\"
if /i "%input:~5%"=="Program Files x86" start "%systemdrive%\Program Files (x86)\"
if /i "%input:~5%"=="appdata" start "%userprofile%\AppData\"
if /i "%input:~5%"=="roaming" start "%appdata%"
if /i "%input:~5%"=="user" start "%systemdrive%\Users"
if /i "%input:~5%"=="startup" start "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Startup\"
if /i "%input:~5%"=="programdata" start "%systemdrive%\ProgramData\"
if /i "%input:~5%"=="desktop" start "%userprofile%\Dekstop\"
if /i "%input:~5%"=="music" start "%userprofile%\Music\"
if /i "%input:~5%"=="documents" start "%userprofile%\Documents\"
if /i "%input:~5%"=="userprofile" start "%userprofile%"
if /i "%input:~5%"=="windows" start "%systemdrive%\Windows"
if /i "%input:~5%"=="hosts" start "%systemdrive%\Windows\System32\drivers\etc\"
if /i "%input:~5%"=="system32" start "%systemdrive%\Windows\System32"
if /i "%input:~5%"=="systemdrive" start "%systemdrive%"
echo 找不到"%input:~5%"
goto input-main

::HELP
:help-choose
find "help-%input:~5%" "Batch Console.cmd" >nul && goto help-goto || set error-code=unknownlabel& goto error
:help-goto
goto help-%input:~5%
:help
cls
title Batch Console - 帮助 / 总览
echo Batch Console - 帮助
echo 其中，各种字符代表可以填在此处的字符
echo 而 none 代表留空，即不填，而不是填上 none 四个字母
echo 请注意：每一个参数之间没有空格，且[[]]的含义是不需要在使用的时候带中括号，[]的含义是在使用时要带上中括号以及里面的内容
echo.
echo web:[[ftp/open]][admin/console/none] -进行 Web 有关的操作，FTP 和网页开启。
echo web:open[site][[WebsiteLink]]
echo mode:[[dev/main]] -进行模式切换
echo help:[[dev/main/web/open/bc]] -查看帮助信息
echo open:[app(lication)/web(site)/dir(ectory)][[FilePath]] -打开指定的文件、目录或网址，或者自定义名称
echo open:[[FileName]]
echo bc:[[about/log]] -查看 Batch Console 的有关讯息
echo.
pause
goto %domain-function-name%
:help-dev
cls
title Batch Console - 帮助 / DevMode
echo Batch Console - DevMode 帮助
echo DevMode 版本：1.0.0@A1
echo DevMode 主要进行部分内部信息的查看和跳转。
echo.
echo help -查看 DevMode 的帮助
echo log -查看完整的 Log 信息
echo cfg:[[log/hardware/system]] -查看基本 Log、硬件配置和系统信息
echo set:[[VariableName]][[=Value]] -设置或更改一个 BC 的内建值
echo boot:[func/plug][[FunctionName/PluginName]] -立即启动或跳转到一个函数或者插件
echo plug:[add/remove/enable/disable][[PluginName/PluginNumber]] -导入、删除、启用、禁用一个插件
echo.
pause
goto %domain-function-name%
:help-main
cls
title Batch Console - 帮助 / MainMenu
echo Batch Console - MainMenu 帮助
echo MainMenu 版本: Batch Console v1.0
echo 内核: APR 28[冒号指令集]
echo 在此，
echo 感谢一位居住在深山里的猫，
echo 以及饲养它的老人。
pause
goto %domain-function-name%
:help-web
cls
title Batch Console - 帮助 / Web
echo Batch Console - Web 帮助
echo WebCore 版本: WebCoreForBatchConsole_APR_28 v1
echo.
echo web:ftp[admin/console/none]
echo - admin 参数使用管理员账户运行 ftp.exe
echo - console 参数使用控制台直接调用 ftp.exe
echo - none 留空直接打开普通的 ftp.exe
echo.
echo web:open[site][[WebSiteName]]
echo - WebSiteName 参数是网站的地址，http 可带可不带，若没有带则会自动补全
echo   打开指定的网站地址
echo.
pause
goto %domain-function-name%
:help-open
cls
title Batch Console - 帮助 / Open
echo Batch Console - Open 帮助
echo OpenEssentials 版本: Open 2
echo.
echo open:[app(lication)/web(site)/dir(ectory)][[FilePath]]
echo - FilePath 参数指文件或目录的位置，若是文件，请以文件拓展名结尾，若是目录，末尾的 \ 可带可不带
echo - app(lication) 参数指定前方 FilePath 参数的类型，既可以写成 app 也可以写全名 application
echo - dir(ectory) 参数指定前方 FilePath 参数的类型，既可以写成 dir 也可以写全名 directory
echo - web(site) 参数指定前方 FilePath 参数的类型，既可以写成 web 也可以写全名 website
echo.
echo open:[[FileName]]
echo - FileName 文件名，打开一些常用的文件名
echo   比如，若您输入「Music」，那么将自动打开%userprofile%\Music\
echo   暂不支持中文。
echo.
pause
goto %domain-function-name%
:help-bc
cls
title Batch Console - 帮助 / BCore
echo Batch Console - BCore 帮助
echo BCore 版本：v1.0
echo BCore 是一个可被修改的 Batch Console 核心函数。
echo 您可以通过修改它来拓展 Batch Console 的功能。
echo.
echo bc:[[about/log]]
echo - about 参数来查看 Batch Console 的关于
echo - log 参数来查看 Batch Console 的基本更新日志
echo.
pause
goto %domain-function-name%

::MODE
:mode-choose
find "mode-%input:~5%-main" "Batch Console.cmd" >nul && goto mode-goto || set error-code=unknownlable& goto error
:mode-goto
goto mode-%input:~5%-main
:mode-dev-main
if "%manage-permission%"=="false" set error-code=managementerror& goto error
:dev-input
cls
set domain-function-name=mode-dev-main
echo Dev CLI [v1.0]
:cli
color 0F
title Batch Console - 调试控制台
set dev.input=void
set /p dev.input=dev^>
if /i "%dev.input%"=="help" goto help-dev
if /i "%dev.input%"=="log" goto dev-log
if /i "%dev.input:~0,5%"=="echo:" echo %dev.input:~6% & goto cli
if /i "%dev.input:~0,4%"=="cfg:" goto dev-cfg
if /i "%dev.input:~0,4%"=="set:" goto dev-set
if /i "%dev.input:~0,5%"=="boot:" goto dev-boot
if /i "%dev.input:~0,5%"=="plug:" goto dev-plug
echo 找不到"%dev.input%"的内建函数定位点。
goto cli
:dev.plug
if "%dev.input:~5,5%"=="[add]" goto dev-add
if "%dev.input:~5,8%"=="[remove]" goto dev-remove
if "%dev.input:~5,8%"=="[enable]" goto dev-enable
if "%dev.input:~5,9%"=="[disable]" goto dev-disable
set error-code=clilabelnotfound& goto error
:dev-add
title Batch Console - 信息
echo 若要添加 Plugin，请将 Plugin 放置于 data\plugins\ 下。
goto cli
:dev-remove
title Batch Console - 警告
color CF
echo 当前操作将会删除您所指定的移除 Plugin
echo 且无法恢复，是否继续？
set yn=n
set /p yn=(y/n)^>
if "%yn%"=="y" move %dev.input:~13% %data%\plugins\removed\ && del %data%\plugins\removed\*.bat && del %data%\plugins\removed\*.cmd && echo 移除成功... && goto cli 
echo 已取消当前操作。
goto cli
:dev-enable
title Batch Console - 信息
move %data%\plugins\disabled\%dev.input:~13% %data%\plugins\ 1>nul 2>nul && echo 成功启用%dev.input:~13% || echo 启用失败。 & goto cli
goto cli
:dev-disable
title Batch Console - 信息
move %data%\plugins\%dev.input:~14% %data%\plugins\disabled\ 1>nul 2>nul && echo 成功禁用%dev.input:~14% || echo 禁用失败。 & goto cli
goto cli

:dev-log
cls
title Batch Console - 日志 / 完整
echo Batch Console Log
echo 内核版本：APR 28
echo 内部版本：0.9
echo 内部名称: BCore9
echo 正式版本号：1.0.0
echo.
echo 1. 重构了代码，并且删去了包括但不仅限于 tool, extensions 等看似无实际用处的功能
echo 2. 删去了冗余的模式，仅保留 dev 且仅将原有的 main 指令扩大后放入 dev
echo 3. 采用安装程序进行安装和释放
echo 4. 采用强制性 UAC 要求
echo.
pause
goto mode-dev-main
:dev-cfg
find "cfg-%dev.input:~4%" "Batch Console.cmd" >nul && goto cfg-goto || set error-code=clilabelnotfound& goto error
:cfg-goto
goto cfg-%dev.input:~4%
:cfg-log
goto dev-log
:cfg-system
cls
title Batch Console - cfg / system
echo System 信息
echo 保存报表请输入 save
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
set /p choose=cfg^>
if "%choose:~0,5%"=="save" goto systeminfo-save
goto mode-dev-main
:systeminfo-save
systeminfo | find "初始安装日期" > Systeminfo.txt
systeminfo | find "系统启动时间" >> Systeminfo.txt
systeminfo | find "BIOS 版本" >> Systeminfo.txt
systeminfo | find "物理内存总量" >> Systeminfo.txt
ver | find "4.0." > NUL && echo 系统版本: Windows 95(太旧了!) >> Systeminfo.txt
ver | find "4.10." > NUL && echo 系统版本: Windows 98(太旧了!) >> Systeminfo.txt
ver | find "4.90." > NUL && echo 系统版本: Windows ME(太旧了!) >> Systeminfo.txt
ver | find "3.51." > NUL && echo 系统版本: Windows NT 3.5(太旧了!) >> Systeminfo.txt
ver | find "5.0." > NUL && echo 系统版本: Windows 2000(太旧了!) >> Systeminfo.txt
ver | find "5.1." > NUL && echo 系统版本: Windows XP(太旧了!) >> Systeminfo.txt
ver | find "5.2." > NUL && echo 系统版本: Windows 2003(太旧了!) >> Systeminfo.txt
ver | find "6.0." > NUL && echo 系统版本: Windows Vista(TM) >> Systeminfo.txt
ver | find "6.1." > NUL && echo 系统版本: Windows 7(TM) >> Systeminfo.txt
ver | find "6.2." > NUL && echo 系统版本: Windows 8(R) >> Systeminfo.txt
ver | find "10." > NUL && echo 系统版本: Windows 10(R) >> Systeminfo.txt
echo 存储报表成功。
pause
goto mode-dev-main
:cfg-hardware
title Batch Console - cfg / hardware
echo Hardware 信息
echo 保存报表请输入 save
wmic diskdrive get caption > DiskCaption.txt
call :ReadSpecialLine DiskCaption.txt 1 line
set diskname=%line%
wmic diskdrive get size > DiskSize.txt
call :ReadSpecialLine DiskSize.txt 1 line
set disksize=%line%
wmic diskdrive get interfacetype > SATA.txt
call :ReadSpecialLine SATA.txt 1 line
set kindS=%line%
wmic baseboard get Manufacturer > basename.txt
call :ReadSpecialLine basename.txt 1 line
set basename=%line%
wmic baseboard get product > prodname.txt
call :ReadSpecialLine prodname.txt 1 line
set prod=%line%
wmic desktopmonitor get name > dm.txt
call :ReadSpecialLine dm.txt 1 line
set dmn=%line%
wmic cpu get name > cpuname.txt
call :ReadSpecialLine cpuname.txt 1 line
set cpuname=%line%
echo 硬盘名称: %diskname%
echo 硬盘容量: %disksize% MiB
echo 硬盘类型: %kindS%
echo 主板厂商: %basename%
echo 主板型号: %prod%
echo 显示器名称: %dmn%
echo CPU名称和最大频率: %cpuname%
del DiskCaption.txt
del DiskSize.txt
del SATA.txt
del basename.txt
del prodname.txt
del dm.txt
del cpuname.txt
set /p choose=cfg^>
if "%choose:~0,5%"=="save" goto hardwareinfo-save
goto mode-dev-main
:hardwareinfo-save
wmic diskdrive get caption > Hardware.txt
wmic diskdrive get size >> Hardware.txt
wmic diskdrive get interfacetype >> Hardware.txt
wmic baseboard get Manufacturer >> Hardware.txt
wmic baseboard get product >> Hardware.txt
wmic desktopmonitor get name >> Hardware.txt
wmic cpu get name >> Hardware.txt
echo 存储报表成功。
pause
goto mode-dev-main
:dev-set
title Batch Console - set / builtin
set %dev.input:~4%
goto cli
:dev-boot
if "%dev.input:~5,6%"=="[plug]" goto dev-boot-plugin
if "%dev.input:~5,6%"=="[func]" find ":%dev.input:~11%" "Batch Console.cmd" 1>nul 2>nul && goto boot-func-goto || set clilabelnotfound& goto error
echo 无法识别的参数"%dev.input:~5,6%"
goto cli
:boot-func-goto
title Batch Console - boot / function / %dev.input:~11%
echo 您正要跳转至 %dev.input:~11%
echo 可能造成程序不稳定，是否继续？
set yn=
set /p yn=(y/n)^>
if "%yn%"=="y" goto %dev.input:~11%
goto cli
:dev-boot-plugin
title Batch Console - boot / plugin
echo 当前可启动的插件列表
echo 输入 exit 退出 BootList
dir /b %data%\plugins\ >nul && dir /b %data%\plugins\ || echo 无法识别的目录或文件。& goto cli
echo.
set /p boot=boot^>
if "%boot%"=="exit" goto cli
call %data%\plugins\%boot%
goto cli
:dev-plug
title Batch Console - plugin
cls
echo Batch Console - 插件
echo.
echo 内置插件:
echo BCore 9 / APR 28
echo DevMode
echo OpenEssentials
echo BootManager
echo.
echo 可用的外置插件:
dir /b %data%\plugins\ >nul && dir /b %data%\plugins\ || echo 无法识别的目录或文件。
if "%error%"=="1" echo 无
echo.
pause
goto cli


::WEB
:web-choose
if "%input:~9,4%"=="site" goto web-open[site]-
find "web-%input:~4%" "Batch Console.cmd" >nul && goto web-goto || set error-code=unknownlabel& goto error
:web-goto
goto web-%input:~4%
::::::::::::::::::::::
:web-ftp
title Batch Console - Web : ftp / normal
:: echo @echo off > %datapath%\data\files\ftp.bat
:: echo ftp >> %datapath%\data\files\ftp.bat
:: echo exit >> %datapath%\data\files\ftp.bat
start %systemdrive%\Windows\System32\ftp.exe && echo 已打开 %input:~4% 的规定函数进程。|| set error-code=actionerror& goto error
echo 按任意键结束当前操作...
pause >nul
taskkill /im /f ftp.exe 1>nul 2>nul || set error-code=actionerror& goto error
goto input-main
::::::::::::::::::::::
:web-ftp[admin]
title Batch Console - Web : ftp / management / runas / %admin-name%
if "%manage-permission%"=="false" set error-code=optionmanagement& goto error
runas /users:"%admin-name%" %systemdrive%\Windows\System32\ftp.exe || set error-code=managementerror& goto error
echo 按任意键结束当前操作...
pause >nul
taskkill /im /f ftp.exe 1>nul 2>nul || set error-code=actionerror& goto error
goto input-main
::::::::::::::::::::::
:web-ftp[console]
title Batch Console - Web : ftp / console
echo 您正尝试在当前控制台运行 %input:~4% 进程。
echo 这将使此控制台进入独占模式，我们将重新启动 Batch Console。
pause
title FTP
start "" "%~dp0\Batch Console.cmd"
ftp

:web-open
set error-code=unknownparameter& goto error
:web-open[develop]
title Batch Console - Web : open / develop
echo 已打开 %input:~4% 的网页。
start https://o.subilan.win/
pause
goto input-main
:web-open[blog]
title Batch Console - Web : open / blog
echo 已打开 %input:~4% 的网页。
start https://subilan.win/
:web-open[site]
set error-code=unknownparameter & goto error
:web-open[site]-
title Batch Console Web : open / %input:~14%
echo 您正在尝试打开网页"%input:~14%"
echo 是否继续？
set /p yn=(y/n)^>
if not "%input:~14,4%"=="http" set input=web:open[site]http://%input:~14%/
if "%yn%"=="y" start %input:~14% & goto input-main
goto input-main

:error
title Batch Console - 错误
:: 标准结尾 & set error-code= & goto input-main
if "%error-code%"=="programneed" echo 错误：您不能在 Batch Console 内执行此指令。& set error-code=& goto input-main
if "%error-code%"=="unknownlabel" echo 错误：未知的参数或标签 & set error-code= & goto input-main
if "%error-code%"=="systemcommanderror" echo 错误：指令执行错误。 & set error-code= & goto input-main
if "%error-code%"=="actionerror" echo 错误：无法完成当前操作 & set error-code= & goto input-main
if "%error-code%"=="optionmanagement" echo 错误：指定参数需要管理员权限 & set error-code= & goto input-main
if "%error-code%"=="managementerror" echo 错误：管理层面错误 & set error-code= & goto input-main
if "%error-code%"=="unknownparameter" echo 错误：未知的参数 & set error-code= & goto input-main
if "%error-code%"=="clilabelnotfound" echo 错误：CLI 找不到相应的函数标签或位置 & set error-code= & goto cli
if "%error-code%"=="cliunknownvalue" echo 错误：CLI 无法识别的变量值或类型 & set error-code= & goto cli
if "%error-code%"=="badoutput" echo 错误：无效的输出，可能是空的目录列表 & set error-code= & goto input-main
title Batch Console - 未知 ERRORCODE
echo 错误：未知 ERRORCODE 的错误。
goto %domain-function-name%

:ReadSpecialLine
setlocal
for /f "delims=" %%a in ('more +%2 %1') do endlocal&set "%3=%%a"&goto:eof