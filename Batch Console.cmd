:: �µ����¹����汾
@echo off
color 0F
if exist install.temp echo ����δ������ȫ��װ�� & pause & exit
set admin-name=administrator
set data=<%systemdrive%\Users\%username%\Desktop\data.donotdelete && goto data-verify-next || echo ����δ������� Batch Console�������� setup.cmd ���� & pause & exit
:data-verify-next
echo ��ӭ��%username%��
move %des
ping 127.0.0.1 -n 3 >nul
goto management-get
:: ����˵��
:: domain-function-name ����ǰ mode �����˵���������
:: error-code ���ڵ��� error ��������׼ȷ�Ĵ�����ʾ
:: ʹ�ö����İ�װ����������ã������򻯿�ͷ�Ĵ�������
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
set title=Batch Console - ����̨
echo ��Ȩ�ɹ�...
set manage-permission=true
goto main
:: From https://www.zhihu.com/question/34541107/answer/91159429

:: management.normal
:management-verify
cd.> %systemdrive%\Windows\System32\1.txt || set manage-permission=false & goto main
del %systemdrive%\Windows\System32\1.txt
set manage-permission=true
if "%manage-permission%"=="true" (set "title=Batch Console - ����̨") else (set "title=Batch Console - ����̨(Non Admin)")
goto main

:main
setlocal enabledelayedexpansion
cls
echo Batch Console [v1.0]
set domain-function-name=main
echo ���� help �鿴����
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
title Batch Console - ��־ / ����
echo Batch Console Log
echo Version 1.0.0
echo.
echo 1. �ع����롢ָ��ļ��ܹ��ͺ�����ת���ж���ʽ
echo 2. �ʵ��������๦�ܲ�����δ�����
echo 3. ���� APR 28 �ں˵�ð��ָ���������ϲ����������δ����������
echo 4. �����ǿ���Թ���ԱȨ�޴���(���������񲡶�����...)
pause
goto main
:about
cls
title Batch Console - ����
echo About Batch Console
echo ��ֲ�� Batch Console Alpha ��Ŀ
echo ����ʽת����ʽ�棬���벻���κ��˵�֧��
echo �Լ��� Github �ϸ��ҵ�һ�� Star �����ѡ�
echo.
echo ��л����ɵ�����Flying Crazyman(��dalao) ���_ĳ��
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
echo �Ѵ�%input:~10%
goto input-main
:open-application
start "" "%input:~18%"
echo �Ѵ�%input:~18%
goto input-main
:open-web
if not "%input:~0,4%"=="http" set input=open:[web]http://%input:~10%/
start "%input:~10%%"
echo �Ѵ�%input:~10%
goto input-main
:open-website
if not "%input:~0,4%"=="http" set input=open:[web]http://%input:~14%/
start "%input:~14%%"
echo �Ѵ�%input:~14%
goto input-main
:open-dir
start "%input:~10%"
echo �Ѵ�%input:~10%
goto input-main
:open-directory
start "%input:~16%"
echo �Ѵ�%input:~16%
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
echo �Ҳ���"%input:~5%"
goto input-main

::HELP
:help-choose
find "help-%input:~5%" "Batch Console.cmd" >nul && goto help-goto || set error-code=unknownlabel& goto error
:help-goto
goto help-%input:~5%
:help
cls
title Batch Console - ���� / ����
echo Batch Console - ����
echo ���У������ַ�����������ڴ˴����ַ�
echo �� none �������գ���������������� none �ĸ���ĸ
echo ��ע�⣺ÿһ������֮��û�пո���[[]]�ĺ����ǲ���Ҫ��ʹ�õ�ʱ��������ţ�[]�ĺ�������ʹ��ʱҪ�����������Լ����������
echo.
echo web:[[ftp/open]][admin/console/none] -���� Web �йصĲ�����FTP ����ҳ������
echo web:open[site][[WebsiteLink]]
echo mode:[[dev/main]] -����ģʽ�л�
echo help:[[dev/main/web/open/bc]] -�鿴������Ϣ
echo open:[app(lication)/web(site)/dir(ectory)][[FilePath]] -��ָ�����ļ���Ŀ¼����ַ�������Զ�������
echo open:[[FileName]]
echo bc:[[about/log]] -�鿴 Batch Console ���й�ѶϢ
echo.
pause
goto %domain-function-name%
:help-dev
cls
title Batch Console - ���� / DevMode
echo Batch Console - DevMode ����
echo DevMode �汾��1.0.0@A1
echo DevMode ��Ҫ���в����ڲ���Ϣ�Ĳ鿴����ת��
echo.
echo help -�鿴 DevMode �İ���
echo log -�鿴������ Log ��Ϣ
echo cfg:[[log/hardware/system]] -�鿴���� Log��Ӳ�����ú�ϵͳ��Ϣ
echo set:[[VariableName]][[=Value]] -���û����һ�� BC ���ڽ�ֵ
echo boot:[func/plug][[FunctionName/PluginName]] -������������ת��һ���������߲��
echo plug:[add/remove/enable/disable][[PluginName/PluginNumber]] -���롢ɾ�������á�����һ�����
echo.
pause
goto %domain-function-name%
:help-main
cls
title Batch Console - ���� / MainMenu
echo Batch Console - MainMenu ����
echo MainMenu �汾: Batch Console v1.0
echo �ں�: APR 28[ð��ָ�]
echo �ڴˣ�
echo ��лһλ��ס����ɽ���è��
echo �Լ������������ˡ�
pause
goto %domain-function-name%
:help-web
cls
title Batch Console - ���� / Web
echo Batch Console - Web ����
echo WebCore �汾: WebCoreForBatchConsole_APR_28 v1
echo.
echo web:ftp[admin/console/none]
echo - admin ����ʹ�ù���Ա�˻����� ftp.exe
echo - console ����ʹ�ÿ���ֱ̨�ӵ��� ftp.exe
echo - none ����ֱ�Ӵ���ͨ�� ftp.exe
echo.
echo web:open[site][[WebSiteName]]
echo - WebSiteName ��������վ�ĵ�ַ��http �ɴ��ɲ�������û�д�����Զ���ȫ
echo   ��ָ������վ��ַ
echo.
pause
goto %domain-function-name%
:help-open
cls
title Batch Console - ���� / Open
echo Batch Console - Open ����
echo OpenEssentials �汾: Open 2
echo.
echo open:[app(lication)/web(site)/dir(ectory)][[FilePath]]
echo - FilePath ����ָ�ļ���Ŀ¼��λ�ã������ļ��������ļ���չ����β������Ŀ¼��ĩβ�� \ �ɴ��ɲ���
echo - app(lication) ����ָ��ǰ�� FilePath ���������ͣ��ȿ���д�� app Ҳ����дȫ�� application
echo - dir(ectory) ����ָ��ǰ�� FilePath ���������ͣ��ȿ���д�� dir Ҳ����дȫ�� directory
echo - web(site) ����ָ��ǰ�� FilePath ���������ͣ��ȿ���д�� web Ҳ����дȫ�� website
echo.
echo open:[[FileName]]
echo - FileName �ļ�������һЩ���õ��ļ���
echo   ���磬�������롸Music������ô���Զ���%userprofile%\Music\
echo   �ݲ�֧�����ġ�
echo.
pause
goto %domain-function-name%
:help-bc
cls
title Batch Console - ���� / BCore
echo Batch Console - BCore ����
echo BCore �汾��v1.0
echo BCore ��һ���ɱ��޸ĵ� Batch Console ���ĺ�����
echo ������ͨ���޸�������չ Batch Console �Ĺ��ܡ�
echo.
echo bc:[[about/log]]
echo - about �������鿴 Batch Console �Ĺ���
echo - log �������鿴 Batch Console �Ļ���������־
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
title Batch Console - ���Կ���̨
set dev.input=void
set /p dev.input=dev^>
if /i "%dev.input%"=="help" goto help-dev
if /i "%dev.input%"=="log" goto dev-log
if /i "%dev.input:~0,5%"=="echo:" echo %dev.input:~6% & goto cli
if /i "%dev.input:~0,4%"=="cfg:" goto dev-cfg
if /i "%dev.input:~0,4%"=="set:" goto dev-set
if /i "%dev.input:~0,5%"=="boot:" goto dev-boot
if /i "%dev.input:~0,5%"=="plug:" goto dev-plug
echo �Ҳ���"%dev.input%"���ڽ�������λ�㡣
goto cli
:dev.plug
if "%dev.input:~5,5%"=="[add]" goto dev-add
if "%dev.input:~5,8%"=="[remove]" goto dev-remove
if "%dev.input:~5,8%"=="[enable]" goto dev-enable
if "%dev.input:~5,9%"=="[disable]" goto dev-disable
set error-code=clilabelnotfound& goto error
:dev-add
title Batch Console - ��Ϣ
echo ��Ҫ��� Plugin���뽫 Plugin ������ data\plugins\ �¡�
goto cli
:dev-remove
title Batch Console - ����
color CF
echo ��ǰ��������ɾ������ָ�����Ƴ� Plugin
echo ���޷��ָ����Ƿ������
set yn=n
set /p yn=(y/n)^>
if "%yn%"=="y" move %dev.input:~13% %data%\plugins\removed\ && del %data%\plugins\removed\*.bat && del %data%\plugins\removed\*.cmd && echo �Ƴ��ɹ�... && goto cli 
echo ��ȡ����ǰ������
goto cli
:dev-enable
title Batch Console - ��Ϣ
move %data%\plugins\disabled\%dev.input:~13% %data%\plugins\ 1>nul 2>nul && echo �ɹ�����%dev.input:~13% || echo ����ʧ�ܡ� & goto cli
goto cli
:dev-disable
title Batch Console - ��Ϣ
move %data%\plugins\%dev.input:~14% %data%\plugins\disabled\ 1>nul 2>nul && echo �ɹ�����%dev.input:~14% || echo ����ʧ�ܡ� & goto cli
goto cli

:dev-log
cls
title Batch Console - ��־ / ����
echo Batch Console Log
echo �ں˰汾��APR 28
echo �ڲ��汾��0.9
echo �ڲ�����: BCore9
echo ��ʽ�汾�ţ�1.0.0
echo.
echo 1. �ع��˴��룬����ɾȥ�˰������������� tool, extensions �ȿ�����ʵ���ô��Ĺ���
echo 2. ɾȥ�������ģʽ�������� dev �ҽ���ԭ�е� main ָ���������� dev
echo 3. ���ð�װ������а�װ���ͷ�
echo 4. ����ǿ���� UAC Ҫ��
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
echo System ��Ϣ
echo ���汨�������� save
systeminfo | find "��ʼ��װ����"
systeminfo | find "ϵͳ����ʱ��"
systeminfo | find "BIOS �汾"
systeminfo | find "�����ڴ�����"
ver | find "4.0." > NUL && echo ϵͳ�汾: Windows 95(̫����!)
ver | find "4.10." > NUL && echo ϵͳ�汾: Windows 98(̫����!)
ver | find "4.90." > NUL && echo ϵͳ�汾: Windows ME(̫����!)
ver | find "3.51." > NUL && echo ϵͳ�汾: Windows NT 3.5(̫����!)
ver | find "5.0." > NUL && echo ϵͳ�汾: Windows 2000(̫����!)
ver | find "5.1." > NUL && echo ϵͳ�汾: Windows XP(̫����!)
ver | find "5.2." > NUL && echo ϵͳ�汾: Windows 2003(̫����!)
ver | find "6.0." > NUL && echo ϵͳ�汾: Windows Vista(TM)
ver | find "6.1." > NUL && echo ϵͳ�汾: Windows 7(TM)
ver | find "6.2." > NUL && echo ϵͳ�汾: Windows 8(R)
ver | find "10." > NUL && echo ϵͳ�汾: Windows 10(R)
set /p choose=cfg^>
if "%choose:~0,5%"=="save" goto systeminfo-save
goto mode-dev-main
:systeminfo-save
systeminfo | find "��ʼ��װ����" > Systeminfo.txt
systeminfo | find "ϵͳ����ʱ��" >> Systeminfo.txt
systeminfo | find "BIOS �汾" >> Systeminfo.txt
systeminfo | find "�����ڴ�����" >> Systeminfo.txt
ver | find "4.0." > NUL && echo ϵͳ�汾: Windows 95(̫����!) >> Systeminfo.txt
ver | find "4.10." > NUL && echo ϵͳ�汾: Windows 98(̫����!) >> Systeminfo.txt
ver | find "4.90." > NUL && echo ϵͳ�汾: Windows ME(̫����!) >> Systeminfo.txt
ver | find "3.51." > NUL && echo ϵͳ�汾: Windows NT 3.5(̫����!) >> Systeminfo.txt
ver | find "5.0." > NUL && echo ϵͳ�汾: Windows 2000(̫����!) >> Systeminfo.txt
ver | find "5.1." > NUL && echo ϵͳ�汾: Windows XP(̫����!) >> Systeminfo.txt
ver | find "5.2." > NUL && echo ϵͳ�汾: Windows 2003(̫����!) >> Systeminfo.txt
ver | find "6.0." > NUL && echo ϵͳ�汾: Windows Vista(TM) >> Systeminfo.txt
ver | find "6.1." > NUL && echo ϵͳ�汾: Windows 7(TM) >> Systeminfo.txt
ver | find "6.2." > NUL && echo ϵͳ�汾: Windows 8(R) >> Systeminfo.txt
ver | find "10." > NUL && echo ϵͳ�汾: Windows 10(R) >> Systeminfo.txt
echo �洢����ɹ���
pause
goto mode-dev-main
:cfg-hardware
title Batch Console - cfg / hardware
echo Hardware ��Ϣ
echo ���汨�������� save
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
echo Ӳ������: %diskname%
echo Ӳ������: %disksize% MiB
echo Ӳ������: %kindS%
echo ���峧��: %basename%
echo �����ͺ�: %prod%
echo ��ʾ������: %dmn%
echo CPU���ƺ����Ƶ��: %cpuname%
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
echo �洢����ɹ���
pause
goto mode-dev-main
:dev-set
title Batch Console - set / builtin
set %dev.input:~4%
goto cli
:dev-boot
if "%dev.input:~5,6%"=="[plug]" goto dev-boot-plugin
if "%dev.input:~5,6%"=="[func]" find ":%dev.input:~11%" "Batch Console.cmd" 1>nul 2>nul && goto boot-func-goto || set clilabelnotfound& goto error
echo �޷�ʶ��Ĳ���"%dev.input:~5,6%"
goto cli
:boot-func-goto
title Batch Console - boot / function / %dev.input:~11%
echo ����Ҫ��ת�� %dev.input:~11%
echo ������ɳ����ȶ����Ƿ������
set yn=
set /p yn=(y/n)^>
if "%yn%"=="y" goto %dev.input:~11%
goto cli
:dev-boot-plugin
title Batch Console - boot / plugin
echo ��ǰ�������Ĳ���б�
echo ���� exit �˳� BootList
dir /b %data%\plugins\ >nul && dir /b %data%\plugins\ || echo �޷�ʶ���Ŀ¼���ļ���& goto cli
echo.
set /p boot=boot^>
if "%boot%"=="exit" goto cli
call %data%\plugins\%boot%
goto cli
:dev-plug
title Batch Console - plugin
cls
echo Batch Console - ���
echo.
echo ���ò��:
echo BCore 9 / APR 28
echo DevMode
echo OpenEssentials
echo BootManager
echo.
echo ���õ����ò��:
dir /b %data%\plugins\ >nul && dir /b %data%\plugins\ || echo �޷�ʶ���Ŀ¼���ļ���
if "%error%"=="1" echo ��
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
start %systemdrive%\Windows\System32\ftp.exe && echo �Ѵ� %input:~4% �Ĺ涨�������̡�|| set error-code=actionerror& goto error
echo �������������ǰ����...
pause >nul
taskkill /im /f ftp.exe 1>nul 2>nul || set error-code=actionerror& goto error
goto input-main
::::::::::::::::::::::
:web-ftp[admin]
title Batch Console - Web : ftp / management / runas / %admin-name%
if "%manage-permission%"=="false" set error-code=optionmanagement& goto error
runas /users:"%admin-name%" %systemdrive%\Windows\System32\ftp.exe || set error-code=managementerror& goto error
echo �������������ǰ����...
pause >nul
taskkill /im /f ftp.exe 1>nul 2>nul || set error-code=actionerror& goto error
goto input-main
::::::::::::::::::::::
:web-ftp[console]
title Batch Console - Web : ftp / console
echo ���������ڵ�ǰ����̨���� %input:~4% ���̡�
echo �⽫ʹ�˿���̨�����ռģʽ�����ǽ��������� Batch Console��
pause
title FTP
start "" "%~dp0\Batch Console.cmd"
ftp

:web-open
set error-code=unknownparameter& goto error
:web-open[develop]
title Batch Console - Web : open / develop
echo �Ѵ� %input:~4% ����ҳ��
start https://o.subilan.win/
pause
goto input-main
:web-open[blog]
title Batch Console - Web : open / blog
echo �Ѵ� %input:~4% ����ҳ��
start https://subilan.win/
:web-open[site]
set error-code=unknownparameter & goto error
:web-open[site]-
title Batch Console Web : open / %input:~14%
echo �����ڳ��Դ���ҳ"%input:~14%"
echo �Ƿ������
set /p yn=(y/n)^>
if not "%input:~14,4%"=="http" set input=web:open[site]http://%input:~14%/
if "%yn%"=="y" start %input:~14% & goto input-main
goto input-main

:error
title Batch Console - ����
:: ��׼��β & set error-code= & goto input-main
if "%error-code%"=="programneed" echo ������������ Batch Console ��ִ�д�ָ�& set error-code=& goto input-main
if "%error-code%"=="unknownlabel" echo ����δ֪�Ĳ������ǩ & set error-code= & goto input-main
if "%error-code%"=="systemcommanderror" echo ����ָ��ִ�д��� & set error-code= & goto input-main
if "%error-code%"=="actionerror" echo �����޷���ɵ�ǰ���� & set error-code= & goto input-main
if "%error-code%"=="optionmanagement" echo ����ָ��������Ҫ����ԱȨ�� & set error-code= & goto input-main
if "%error-code%"=="managementerror" echo ���󣺹��������� & set error-code= & goto input-main
if "%error-code%"=="unknownparameter" echo ����δ֪�Ĳ��� & set error-code= & goto input-main
if "%error-code%"=="clilabelnotfound" echo ����CLI �Ҳ�����Ӧ�ĺ�����ǩ��λ�� & set error-code= & goto cli
if "%error-code%"=="cliunknownvalue" echo ����CLI �޷�ʶ��ı���ֵ������ & set error-code= & goto cli
if "%error-code%"=="badoutput" echo ������Ч������������ǿյ�Ŀ¼�б� & set error-code= & goto input-main
title Batch Console - δ֪ ERRORCODE
echo ����δ֪ ERRORCODE �Ĵ���
goto %domain-function-name%

:ReadSpecialLine
setlocal
for /f "delims=" %%a in ('more +%2 %1') do endlocal&set "%3=%%a"&goto:eof