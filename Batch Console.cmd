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
set devc-eof=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-eoo=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-cls=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-goto=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-color=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set into-dev=echo �޷���֤���Ŀ�����״̬�����������ò���ֵ�����ԡ� ^& goto int
:begin
@echo off
goto main

:main
cls
if "%unman%"=="true" echo ��ǰ�����޷�ʹ�ù���ԱȨ�ޣ����ܻ�Ӱ�첿�ֹ��ܵ���ȷִ�С�
color 0F
echo Batch Console [v0.2]
echo ���� help �鿴����
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
if "%con:~0,8%"=="setlocal" echo SETLOCAL ����ȫ��ʼ���� & goto int
if "%con:~0,3%"=="set" goto set.choose
if "%con%"=="reload" goto reload.sure
if "%con%"=="color 0" echo ���ܽ� COLOR ����Ϊ0�� & goto int
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
if /i "%con:~5%"=="����" start %systemdrive%\Windows\Fonts & goto int
if /i "%con:~5%"=="fon" start %systemdrive%\Windows\Fonts & goto int
if /i "%con:~5%"=="�û�" start %userprofile% & goto int
if /i "%con:~5%"=="userprofile" start %userprofile% & goto int
if /i "%con:~5%"=="�û�����" start %userprofile% & goto int
if /i "%con:~5%"=="user" start %userprofile% & goto int
if /i "%con:~5%"=="%username%" start %userprofile% & goto int
if /i "%con:~5%"=="windows" start %systemdrive%\Windows & goto int
if /i "%con:~5%"=="ϵͳ" start %systemdrive%\Windows & goto int
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
if /i "%con:~5%"=="���32" start "%systemdrive%\Program Files (x86)" & goto int
if /i "%con:~5%"=="programs64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programfiles64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program files64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program file64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="���64" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programs" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program files" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program file" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="programfiles" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="program" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="���" start "%systemdrive%\Program Files" & goto int
if /i "%con:~5%"=="old" start %systemdrive%\Windows.old & goto int
if /i "%con:~5%"=="windows.old" start %systemdrive%\Windows.old & goto int
if /i "%con:~5%"=="oldwindows" start %systemdrive%\Windows.old & goto int
if /i "%con:~5%"=="music" start %userprofile%\Music & goto int
if /i "%con:~5%"=="����" start %userprofile%\Music & goto int
if /i "%con:~5%"=="����" start %userprofile%\Music & goto int
if /i "%con:~5%"=="musics" start %userprofile%\Music & goto int
if /i "%con:~5%"=="desktop" start %userprofile%\Desktop & goto int
if /i "%con:~5%"=="desk" start %userprofile%\Desktop & goto int
if /i "%con:~5%"=="����" start %userprofile%\Desktop & goto int
if /i "%con:~5%"=="download" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="downloads" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="down" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="downs" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="����" start %userprofile%\Downloads & goto int
if /i "%con:~5%"=="onedrive" start %userprofile%\OneDrive & goto int
if /i "%con:~5%"=="appdata" start %userprofile%\AppData\ & goto int
if /i "%con:~5%"=="roaming" start %AppData% & goto int
if /i "%con:~5%"=="local" start %userprofile%\AppData\Local & goto int
if /i "%con:~5%"=="locallow" start %userprofile%\AppData\LocalLow & goto int
echo �Ҳ��� %con:~5%
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
echo Ŀǰ�����ڱ������ָ�
goto int
:dcc
set /p yn=ɾ��(y/n):
if "%yn%"=="y" goto delcommand
echo �û�ȡ��������
goto int
:delcommand
del %cd%\data\commands\commanding.load
del %cd%\data\commands\commandname.load
echo ��ɾ��%commandnamem%
set enablenewcommand=false
goto int

:make.choose
if "%con:~5,3%"=="dir" goto makedir
if "%con:~5,3%"=="com" goto makecom
if "%con:~5%"=="-?" goto make.help
if "%con:~5%"=="/?" goto make.help
echo %con:~5% ������Ч�� make ������
goto int

:makecom
set command=%con:~9%
title ָ�������� - %command%
echo Ŀǰ���ڱ༭%command%
set /p commc=
echo �Ƿ�ȷ����%command%��Ч�����ݴ洢Ϊ%commc%��
set /p yn=(y/n):
if "%yn%"=="y" goto savecom
echo �ѷ����༭ %con:~9%��
goto int
:savecom
echo read.commandname >> data\commands\commandname.load
echo %command% >> data\commands\commandname.load
echo read.commanding >> data\commands\commanding.load
echo %commc% >> data\commands\commanding.load
echo �Ѵ洢 %command% ����Ϊ %commc%
set enablenewcommand=true
echo ��ָ��������ļ����ڵ��������Ч��
goto int


:makedir
set dirpath=%con:~9%
echo %con:~9% > nul | find " " && goto makefile.space
md %dirpath%
echo �Ѵ��� %dirpath%
goto int
:makefile.space
md "%dirpath%"
echo �Ѵ��� %dirpath%
goto int

:whatsnew
cls
color 1A
title What's new
echo Indev ���Լƻ�������(����δ��չ)��
echo Console ��ָ���������Զ���
echo ʷ��ǰ��*��ָ���ж�����:
echo ����ȥ���ƺ����� ������������
echo ע*: ����֤�ô���ǰ���ﾳ��Ȩ����
goto int

:about
cls
color 1A
title ����
echo ����һ���򵥵������̨����
echo ּ��ģ��һ�п��Ա�CMD��������ļ��������������
echo ���ָ��������õ��򻯣�����Ȼ���кܶ��ȱ�ݣ�
echo ��֮������ܼ�ª���д�ά���뷢չ��
echo.
echo ��л��һֱ������֧�֣���л�������˱�����
echo �����׷���Bat չʾ����Ⱥ��
pause
goto main

:cfg.choose
if "%con:~7%"=="system" goto sys.cfg
if "%con:~7%"=="user" goto user.cfg
if "%con:~7%"=="hardware" goto hdw.cfg
if "%con:~7%"=="/?" goto cfg.help
if "%con:~7%"=="-?" goto cfg.help
if "%con:~7%"=="log" goto log.cfg
echo ��Ч�Ĳ��� %con:~7%
goto int

::Config
:log.cfg
echo [UpdateLog Config]
echo v0.2 ������־��Ϣ
echo - ��������/˯��/�ػ�/���� ָ��
echo - ����ָ��
echo �� whatsnew
echo �� make
echo �� open
echo - ���� Dev ָ��
echo �� info
echo ��ָ���������� Batch Console ����ϸ�ṹ�������Ϣ
goto int
:sys.cfg
echo [System Config]
echo ������...
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
echo ϵͳ��װ�ļ���: %systemroot%
goto int
:user.cfg
echo [User Config]
echo ������...
systeminfo | find "��¼������"
echo ������: %computername%
echo �û���: %username%
echo �û��ļ���: %userprofile%
echo AppData: %AppData%
goto int

:ReadSpecialLine
setlocal
for /f "delims=" %%a in ('more +%2 %1') do endlocal&set "%3=%%a"&goto:eof
:hdw.cfg
if "%unman%"=="true" echo Ȩ�޲��㡣 & goto int
echo [Hardware Config]
echo ������...
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
echo Ӳ������: %diskname%
echo Ӳ������: %disksize%MB
echo Ӳ������: %kindS%
echo ���峧��: %basename%
echo �����ͺ�: %prod%
echo ��ʾ������: %dmn%
echo CPU���ƺ����Ƶ��: %cpuname%
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
echo DO.CHH δ֪������ָ�����
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
echo ѭ��ִ����ɡ�
goto int

:loop.fail-num
echo �޷�ʶ�������
set loops= 
goto int

:do.till
echo ���� back ���˳�
echo ���� change [COMMAND] ���л�
set comm=%con:~6%
:till
set /p tills=
if "%tills%"=="back" goto int
%comm%
goto till

:reload.sure
echo ȷ��������������?
echo ���ɾ�������������������ϡ�(�������ѱ����)
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
echo ����ȷ������ %con:~10%
goto int
:quickdelete
if "%con:~16%"=="true" set quickdelete=true & echo �����ÿ���ɾ�� & set func.quickdelete=/f /q & del C:\svd\qdFalse.svd 1>nul 2>nul & goto int
if "%con:~16%"=="false" set quickdelete=false & echo �ѽ��ÿ���ɾ�� & set func.quickdelete=  & echo cannot view the file in dos mode > C:\svd\qdFalse.svd & goto int
echo "%con:~16%" ������Ч�Ĳ���ֵ��
goto int
:devmode
if "%con:~12%"=="true" set dev=true & echo �����ÿ�����ģʽ & goto devset
if "%con:~12%"=="false" set dev=false & echo �ѽ��ÿ�����ģʽ & del C:\svd\devmodeTrue.svd 1>nul 2>nul & goto devdis
echo "%con:~12%" ������Ч�Ĳ���ֵ��
goto int
:outputsystemerror
if "%con:~22%"=="true" set outputsystemerror=true & set func.outputsystemerror= & echo ���������ϵͳ���� & echo unkown host. > C:\svd\opseTrue.svd & goto int
if "%con:~22%"=="false" set outputsystemerror=false & set func.outputsystemerror=2^>nul ^|^| goto error & echo �ѽ������ϵͳ���� & del C:\svd\opseTrue.svd 1>nul 2>nul & goto int

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
set devc-eof=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-eoo=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-cls=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-goto=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
set devc-color=echo �޷��� %%DEVMODE%% ������ʱʹ�õ�ǰָ� ^& goto int
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
echo %con% ���ǿ�ִ�е�BCָ���CMDָ�
goto int

:mode.choose
if "%con:~5%"=="net" goto main.net
if "%con:~5%"=="web" goto main.net
if "%con:~5%"=="network" goto main.net
if "%con:~5%"=="dev" goto main.dev
echo ����ȷ�� MODE ѡ��: %con:~5%��
goto int

:setoutput
set outputpath=%con:~10%
echo �ѽ� OUTPUT ��������Ϊ %con:~10%
goto int

:output.choose
if "%con:~7,2%"=="-?" goto output.help
if "%con:~7,2%"=="/?" goto output.help
if "%outputpath%"=="none" echo δ������㡣 & goto int
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
echo ���� help �鿴����
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
echo %nec% ���ǿ��õ� NET ָ�
goto var

:sping
echo back ���������˵�
echo undo ��������
:sp-lines
set /p lines=������ PING ���߳�:
if %lines% GTR 15 echo �����˷��ؿ��ܻᵼ�´��������½���
if "%lines%"=="back" goto main.net
if "%lines%"=="undo" echo ���޿ɳ����Ĳ�����
goto sp-packages
:sp-packages
set /p packs=������ÿ�����Ĵ�С(�ֽ�):
if %packs% LSS 1 echo ���������ѡ��: С��1 & goto sp-packages
if %packs% GTR 65500 echo ���������ѡ��: ����65500 & goto sp-packages
if "%packs%"=="back" goto main.net
if "%packs%"=="undo" goto sp-lines
goto sp-times
:sp-times
set /p times=������ PING �Ĵ���:
if %times% GTR 500 echo ���������ѡ��: ����500 & goto sp-times
if %times% LSS 1 echo ���������ѡ��: С��1 & goto sp-times
if "%times%"=="back" goto main.net
if "%times%"=="undo" goto sp-packages
goto sp-ip
:sp-ip
set /p ip=������ PING �������� IP ��ַ:
if "%ip:~0,1%"=="0" echo ������0��ͷ��
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
echo �����������ɾ��һ����ʱ�ļ��Լ���ֹһ�г���
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
set /p d=�� ENTER ��ɾ�����ر�...
del sping.cmd 1>nul 2>nul || echo ɾ��ʧ�ܡ�
goto main.net

:test.choose
if "%nec:~5%"=="/?" goto test.help
if "%nec:~5%"=="-?" goto test.help
if "%nec:~5,5%"=="-gfw" goto gfw.test
if "%nec:~5,5%"=="/gfw" goto gfw.test
goto net.test

:net.test
title Debug
echo ���ڲ��� Net ������
ping baidu.com -n 1 >nul && goto net.okay
set not-ok=Net& set some=������& set other=CMD�����& goto test.error
:net.okay
color 1A
echo Net Ŀǰ���á�
color 1F
goto var

:test.error
title Debug - ERROR
color 1C
echo %not-ok% Ŀǰ%some%��%other%��
color 1F
goto var

:gfw.test
title Debug
echo ���ڲ��� GFW ��������
ping www.google.com.hk -n 1 >nul && goto gfw.okay
set not-ok=GFW& set some=����& set other=��VPNЭ�鲻֧��(�ܿ���)& goto test.error
 :gfw.okay
color 1A
echo GFW Ŀǰ�����á�
color 1F
goto var

:return.zero
echo ftp.exe %nec:~4% > ftp.cmd
start ftp.cmd
echo �ѳɹ��򿪹��� %nec:~4% �� FTP ���ӡ�
goto var

:main.dev
if "%dev.lock%"=="true" goto dev-login
:dev.logon
if exist C:\svd\devmodeTrue.svd set devmode=true
if "%devmode%"=="true" goto dev-enter
if "%devmode%"=="false" echo ���� DEVMODE �Ƿ��������� & goto int
echo ��ʧ��ȷ�Ĳ���ֵ�� & goto let
:dev-enter
cls
color 2F
echo Dev Mode [Valpha]
echo ���� ? �鿴����
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
echo %mad% ����һ�����õĿ�����ָ�
goto let

:dev-login
echo ��¼ Devmode
set /p dev.passwordc=dev.password~^>
if "%dev.passwordc%"=="%dev.password%" goto welcome.dev
echo ���������: %dev.passwordc%
goto int
:welcome.dev
cls
color 2F
echo ��ӭ������%username%��
ping 127.0.0.1 -n 2 >nul
goto dev.logon

:lock.remove
if "%dev.lock%"=="false" echo ��δ�������� & goto let
title Devmode ^> Delete Lock
echo ��������ǰ������
set /p dev.passwordc=
if "%dev.passwordc%"=="%dev.password%" goto dev.dellock
echo ���������: %dev.passwordc%
goto let
:dev.dellock
del %appdata%\Console\dpass.int
set dev.lock=false
set dev.password= 
set dev.passwordc= 
echo ��ɾ�����뱣��
goto let

:lock.choose
if "%mad:~5%"=="-?" goto lock.help
if "%mad:~5%"=="/?" goto lock.help
if "%mad:~5%"=="-add" goto lock.add
if "%mad:~5%"=="-remove" goto lock.remove
echo ��Ч������
goto let

:lock.add
if "%unman%"=="true" echo Ȩ�޲��� & goto let
title Devmode ^> Lock
echo [Lock Genius]
echo ��������:
set /p dev.password=
ping 127.0.0.1 -n 1 >nul
goto lock.comp
:lock.comp
echo Password Save >> %Appdata%\Console\dpass.int
echo %dev.password% >> %Appdata%\Console\dpass.int
set dev.lock=true
echo �ѳɹ���������
goto let

:info
cls
title Information
echo About: 0.2
echo Ŀǰ��Batch Console ������һ�� data Ŀ¼
echo һ����Զ������� Batch Console ���ڵ�Ŀ¼
echo ��Ŀ¼Ŀǰ���� commands һ��Ŀ¼�����洢
echo make ָ���������������Ϣ��
echo ��Σ�Devmode �������������ơ�
echo ���� lock ���˽⡣
echo.
echo Information ����Ὣÿ���汾��������·�������
echo �����Բ�רҵ����ϸ���͡�
echo �������Ȥ��������ÿ���汾��������һ�ˡ�
pause
goto main.dev

:clear
if "%mad:~6%"=="-?" goto clear.help
if "%mad:~6%"=="/?" goto clear.help
echo ��ǰû�л���/��ʱ�ļ���
goto let

:debug.choose
if "%mad:~6%"=="-?" goto debug.help
if "%mad:~6%"=="/?" goto debug.help
if "%mad:~6,5%"=="-view" goto debug.view
if "%mad:~6,5%"=="-edit" goto debug.edit
echo ����Ĳ���: %mad:~6%
goto let

::Ŀǰ��δ���ֿ�������Ԥ���Ѵ洢function�ķ�������ʱ���� Orz
:debug.view
title debug fatal
echo %mad:~12% ���ǿɱ� VIEW �ĺ�����
goto let

:debug.edit
title debug fatal
echo %mad:~12% ���ǿɱ� EDIT �ĺ�����
goto let

:save
if "%mad:~5%"=="-?" goto save.help
if "%mad:~5%"=="/?" goto save.help
title Batch Console ^> Developer ^> Save
if "%unman%"=="true" goto managementerror
echo ���洢���б�������
pause
:: SVD Package
echo cannot view the file in dos mode > C:\svd\savebackTrue.svd
if "%devmode%"=="true" echo cannot view the file in dos mode > C:\svd\devmodeTrue.svd
if "%outputsystemerror%"=="true" echo cannot view the file in dos mode > C:\svd\opseTrue.svd
if "%quickdelete%"=="false" echo cannot view the file in dos mode > C:\svd\qdFalse.svd
echo �ѳɹ��洢��
goto let

:managementerror
title FATAL: Management Error: Windows UAC denied.
echo FATAL ERROR: ��Ȩ�ޡ�
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
echo %mad:~9% ����һ����Ч�Ĳ�����
goto let
:function.add
title Batch Console ^> Developer ^> Function ^> Path Set
echo �ѽ��� FUNCTION.PATH ������
echo �밴������˳���������:
echo - �洢������ݷ�ʽ��λ�� /saveto [Path\.bat,cmd]
echo - ��������
echo ����ߵ�����֪������ݷ�ʽ:
echo - �����ݷ�ʽ��λ�� /input [Path\.bat,cmd]
echo - �洢
echo ���ڱ�д���������������Զ����� @echo off ָ�
:leta
set /p func=FUNCTION.PATH^>
if "%func:~0,7%"=="/saveto" goto batorcmd
if "%func:~0,6%"=="/input" goto input.batorcmd
echo ����δ���� SAVETO ·���� INPUT ·�������������˴����ָ�
goto leta
:input.batorcmd
title Batch Console ^> Developer ^> Function ^> Input
if "%func:~-1%"=="\" echo ��δ��д�ļ���Ϣ�� & goto leta
if "%func:~-4%"==".cmd" set svp=%func:~7% & echo ���������·�� & goto inputsth
if "%func:~-4%"==".bat" set svp=%func:~7% & echo ���������·�� & goto inputsth
echo �������÷� .CMD �� .BAT ���ļ���
goto leta
:inputsth
echo �ѵ��� %svp%
title Batch Console ^> Developer ^> Function ^> Save
set /p funcnum=�����뺯�����(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=�����뺯������:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main.dev
:batorcmd
if "%func:~-1%"=="\" goto nameyourfile
if "%func:~-4%"==".cmd" set svp=%func:~8% & echo ���������·�� & goto letb
if "%func:~-4%"==".bat" set svp=%func:~8% & echo ���������·�� & goto letb
echo �������÷� .CMD �� .BAT ���ļ���
goto leta
:nameyourfile
set paths=%func:~8%
echo �����뺯����ݷ�ʽ������
set /p name=
if "%name%"=="\" goto nameyourfile
if "%name:~-4%"==".cmd" set svp=%paths%%name% & echo ���������·�� & goto letb
if "%name:~-4%"==".bat" set svp=%paths%\%name% & echo ���������·�� & goto letb
goto batorcmd
:letb
echo @echo off >> %svp%
echo ���� /back �Է���
:letc
title Batch Console ^> Developer ^> Functions ^> Add
set /p func=FUNCTION.ADD^>
if "%func%"=="/back" goto goback
if "%func%"=="/open" start %svp% & goto letb
if "%func%"=="/where" echo Ŀǰ�洢�� %svp% & goto letb
if "%func%"=="/save" goto savefunc
echo %func% >> %svp% 2>nul || goto func.err
goto letc
:func.err
echo ����ִ�в��ɹ���
echo %func% >> %svp%
goto letb
:goback
echo �ѽ�������ݷ�ʽ�洢��%svp%
goto main.dev

:funcnumerr
echo �����ʵĴ�С��
goto savefunc

:savefunc
title Batch Console ^> Developer ^> Function ^> Save
set /p funcnum=�����뺯�����(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=�����뺯������:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main.dev

:function.call
title Batch Console ^> Developer ^> Function ^> Call Functions
echo ���� back �Է��ء�
:list.select
set /p ls=�����뺯�����ƻ�����Ե���:
if "%ls%"=="back" goto main.dev
set /a dim=%ls%+1 2>nul && call !funcpath%ls%!
call !funcpath%ls%!
echo %ls% ���Ǵ��ڵĺ������ƻ���š�
pause
goto main.dev
:function.remove
title Batch Console ^> Developer ^> Function ^> Remove
echo ���� back �Է��ء�
:del.select
set /p ds=�����뺯�����ƻ��������ɾ��:
if "%ds%"=="back" goto main.dev
set /a dim=%ds%+1 2>nul && del !funcpath%ds%! 1>nul 2>nul & echo �ɹ�ɾ�����Ϊ %ds% �ĺ��� & goto main.dev
del !funcpath%ds%! 1>nul 2>nul& �ɹ�ɾ�� %ds% & goto main.dev
echo %ds% ���Ǵ��ڵĺ������ƻ���š�
pause
goto main.dev

::HELPS
:net.help
title Batch Console ^> Help Files ^> Network
cls
echo ��ӭ�鿴����
echo.
echo FTP [IP/WWW] ʹ������ FTP ���д��䡣
echo UPING [IP/WWW] ���޴�(������)�Ե�ַ���� PING ������
echo SPING ���ж��߳� PING ������
echo TEST [-GFW/nul] �����Ƿ����������ĳһ�������硣(������Ϊ��ά��)
pause
goto main.net
:dev.help
title Batch Console ^> Help Files ^> Developer
echo.
echo FUNCTION [-ADD/-REMOVE/-CALL] �Թ��ܵ�ָ���Բ�����
echo SAVE �洢��ǰ������֪�����������ļ���
echo CLEAR ɾ�����л���/��ʱ�ļ���
echo DEBUG [-view/-edit] [FUNCTION] ������״̬��
echo LOCK [-add/-remove] ��ӻ�ɾ�����뱣��
pause
goto let
:help
title Batch Console ^> Help Files ^> Normal
cls
echo ��ӭ�鿴������
echo.
echo MODE [MODENAME] �л���ָ��ģʽ��������������
echo OUTPUT [STRING] ����ַ�����ָ��λ�á�
echo SETOUTPUT [PATH] ��������ַ�����λ�á�
echo CONTROL [CPLNAME] ��ָ���Ŀ��������(CPL)��
echo RELOAD ���������ʼ������(�Ѵ洢�Ĳ��ᱻ����)
echo DO [-L (times)/-T] [COMMAND] ����/ѭ��ĳһָ����ļ���
echo CONFIG [STRING] ��ʾָ����Ŀ���Ƶ� Config ��Ϣ��
echo WHATSNEW �鿴����רҵ�Ļ�����Ϣ��
echo MAKE [DIR/COM] ��������Ŀ¼�����ָ�
echo DCOM ɾ���洢��ָ�
echo OPEN [PATHNAME] ���ٴ�Ŀ¼��
echo SLEEP/SHUTDOWN/RESTART[/O]/HIBERNATE ����˯��/�ػ�/����/���ߡ�
echo EXIT �����沢�˳���
pause
goto main
:lock.help
echo Usage: LOCK [-add/-remove]
echo ���������������
echo ���óɹ��󣬴����뽫���ڳ�����Ϊɾ�����κ�����´��ڡ�
echo ���� -remove ��Ҫ����ԭ���롣
goto let
:clear.help
echo Usage: CLEAR
echo ɾ��δ����ʱ����Ļ��桢��ʱ�ļ���
echo ͨ����Щ�ļ�������ϵͳ��Ŀ¼������������λ�á�
echo Ҳ�����������صġ�
goto let
:save.help
echo Usage: SAVE
echo �洢������Ϣ�������ļ���
echo һ����� Devmode ����������ȡ�
echo �����������������Ϣ��
goto let
:open.help
echo Usage: OPEN [PATHNAME]
echo ���� PATHNAME Ϊ�����Ͽɱ����е�����
echo ���� programfiles, appdata, desktop ��
echo ��ͬϵ�е� PathFinder ��ֲ������
echo Ŀǰ PathFinder ��ֹͣ���¡�
goto int
:sleep.help
echo Usage: SLEEP
echo ���� RUNDLL 32 ʵ��˯�߹��ܡ�
goto int
:shutdown.help
echo Usage: SHUTDOWN
echo ���԰���ϵͳ�÷����С�
echo ������SHUTDOWN��������ػ���
goto int
:restart.help
echo Usage: RESTART [/O]
echo ���������������
echo ���� -O ����������������������Զ�����߼�����ҳ�档
echo ������������Ӳ�̵��Ժ�˫ϵͳ�л���
goto int
:hibernate.help
echo Usage: HIBERNATE
echo �ù���������ϵͳָ�� shutdown -h
echo ���߻ᱣ�����й����뻺�����ݣ�֮����ȫ�رռ����
echo �������й����뻺�����ݴ�����Ӳ��
echo ��һ�ο���������󣬻ᱣ���ر�ǰ�Ĵ��ں��������
echo ������Խϲ�Ƽ�ʹ�����߶����ǹػ���
echo ��������ʱ�ĺĵ����⣬��ػ���һ���ģ�˿�����ѵ硣
goto int
:make.help
echo Usage: MAKE [DIR/COM]
echo MAKE COM [COMMAND_STRING] ����ָ�������򵼡�
echo ��������Ŀ¼���������
echo ����ָ����洢��data\commands\�¡�
echo ָ��洢�󣬳���ʹ��DCOMָ�����Ϊɾ�������򲻻ᶪʧ��
echo ��������Ŀ¼���÷���
echo - make dir [DIRPATH\]
echo ���� DIRPATH ������ \ ��β
echo ������ \ �����ΪĿ¼�����ƣ���Ҫ����������Կո�ָ�
echo Batch Console Dev ��֤��ָ��û��ͨ�� for ʵ�֡�
echo e.g. make dir C:\Windows\System32\1 2 3 test helloworld
echo �����C:\Windows\System32\Ŀ¼�´�����Ϊ1��2��3��test��helloworld��5��Ŀ¼��
goto int
:cfg.help
echo Usage: CONFIG [STRING]
echo Ŀǰ���õ�STRING�����
echo hardware, system, user, log��
goto int
:do.help
echo Usage: DO [-L (times)/-T] [COMMAND]
echo -L [TIMES] ָ����׼ѭ��ʱ��
echo -T ʹ�û��з�(CRLF)����ָ��ָ��
echo �� TIMES ����ʶ�������ʹ�� set loops [NUM] ָ��
echo �ڴ����£�NUM ��ʾ���� TIMES ��λ������ʮλ����Ϊ 2.
echo Ĭ�������Ϊ 1.
goto int
:set.help
echo Usage: SET [VARIABLE_NAME] = [STRING]
echo SET [BC_SETTINGVAR] [BOOL]/[STRING/NUM]
echo ����һ�������Խ�����ʱ���û��޸� Batch Console ����Ӧ��������ֵ
echo �Դﵽ���������Ч����һЩ����ֵ�����ú�ᱻ���棬���ᱻ���á�
echo Ŀǰ��֧�ֵ� BC_SETTINGVAR ����
echo devmode, outputsystemerror, quickdelete, loops�ȡ�
goto int
:control.help
echo Usage: CONTROL [CPLNAME] 
echo ��ָ���Ŀ�������
echo Ŀǰ֧��Ӣ�����ƺ�CPL�ļ�����
echo ��: ���������� appmanager �� appwiz ���档
echo e.g. control appmanager
goto int
:test.help
echo Usage: TEST (-GFW)
echo ����һ�������Ƿ���û�GFW�Ƿ񲻿��á�
echo ��һ������£����ڴ�ͳ��ping��ʽ�������Ƿ��д���
echo �䷢�����޷���ԽGFW����˻���ֿ��˴�����Ȼ����GFW��Ч�������
echo Ŀǰ�������޷����޸���
goto var
:debug.help
echo Usage: DEBUG [-VIEW/-ADD]
echo ����һ���ɱ����������Ԥ���ɱ������
echo ����CMD�Ĺ��ܾ����ԣ��˹��ܽ��������ÿ���״̬��
goto let
:function.help
echo Usage: FUNCTION [-ADD/-REMOVE/-CALL]
echo �����ɱ���Ĺ��ܺ���(����BAT�ļ�)�����ҿ�ÿ�����µ�ȡ��
echo FUNCTION �ĺ����� Batch Console �ڲ���������ͻ��
echo FUNCTION �ĺ����޷����� Debug��
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
echo ȱ��LOAD�ļ��� & goto comload.back
:continue.comload
set enablenewcommand=true
call :ReadSpecialLine data\commands\commanding.load 1 commandinm
call :ReadSpecialLine data\commands\commandname.load 1 commandnameo
set commandnamem=%commandnameo:~0,-1%
goto comload.back

:passload.dev
echo ��ʼ������
call :ReadSpecialLine %appdata%\Console\dpass.int 1 dev.password
set dev.password=%dev.password:~0,-1%
set dev.lock=true
goto passload.back