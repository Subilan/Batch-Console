::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFEoMGFfbAFuzBaEJ+u3o08iGtk4VaMBqNobY1dQ=
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
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFEoMGFfbAE+/Fb4I5/jHzeuToUVdd+0xa4DX3/SYcK5FqnaqcI4otg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
:: Base64 Verify
:: ����޸ģ�2018/5/11
::NEVER RELOAD BY
set custom-tool-enabled=false
:reload
set pi=3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679
set sqrtt=1.4142135623730950488016887242096980785696718753769480731766797379907324784621070388503875343276415727
set e=2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274
set alpha=2.502907875095892822283902873
:: ALPHA 27λ
set rho=1.324717957244746025960908854478097340734
:: RHO 39λ
set algor=powershell
set nowpath=%~dp0
set data=%nowpath%\data\
set color=0F
set enablenewcommand=false
set newcommand= 
set errormessage.bool=false
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
if "%unman%"=="false" del %systemdrive%\Windows\System32\test.txt 1>nul 2>nul
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
if exist C:\svd\opseTrue.svd set outputsystemerror=true & set func.outputsystemerror=  & goto skipr
if exist C:\svd\qdFalse.svd set quickdelete=false & set func.quickdelete=  & goto skipr
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
if "%unman%"=="true" echo ��ǰ�����޷�ʹ�ù���ԱȨ�ޣ����ܻ�Ӱ�첿�ֹ��ܵ���ȷִ�С�
echo Batch Console [v0.6]
echo ���� help �鿴����
:int
color %color%
title Batch Console
if "%unman%"=="true" title Batch Console - Non Admin
set /p con=%username%~^>
if "%con%"=="github" start https://github.com/Subilan/Batch-Console-Alpha & echo �Ѵ򿪱�����Դҳ�档 & goto int
if "%con%"=="blog" start https://subilan.win/ & echo �Ѵ����߲��͡� & goto int
if "%con%"=="build" start https://build.subilan.win/ & echo �Ѵ򿪹���ҳ�档 & goto int
if "%con%"=="minecraft" start https://mc.subilan.win/ & echo ��...���Ȼ���� & goto int
:: �����ҿ���һ��С��Minecraft��������...����Ȥ������������˽�һ�¡�
if "%con%"=="help" goto help
if "%con%"=="?" goto help
if "%con%"=="lab" goto lab
if "%con:~0,4%"=="tool" goto tool.choose
if "%con:~0,4%"=="mode" goto mode.choose
if "%con:~0,9%"=="setoutput" goto setoutput
if "%con:~0,6%"=="output" goto output.choose
if "%con%"=="echo off" echo �޷��رջ��ԡ� & goto int
if "%con%"=="echo on" echo �޷��򿪻��ԡ� & goto int
if "%con%"=="@echo off" echo �޷��رջ��ԡ� & goto int
if "%con%"=="@echo on" echo �޷��򿪻��ԡ� & goto int
if "%con%"=="cls" echo �޷������� & goto int
if "%con:~0,4%"=="goto" goto goto.choose
if "%con:~0,3%"=="ftp" goto int
if "%con:~0,7%"=="control" goto control.choose
if "%con:~0,3%"=="del" goto del.faster
if "%con:~0,8%"=="setlocal" echo SETLOCAL ����ȫ��ʼ���� & goto int
if "%con:~0,3%"=="set" goto set.choose
if "%con%"=="reload" goto reload.sure
if "%con:~0,5%"=="color" goto color.choose
if "%con%"=="help-cmd" help & goto int
if "%con%"=="help -cmd" help & goto int
if "%con%"=="help -?" goto help.help
if "%con:~0,2%"=="do" goto do.choose
if "%con:~0,6%"=="config" goto cfg.choose
if "%con%"=="about" goto about
if "%con:~0,4%"=="make" goto make.choose
if "%con%"=="dcom" goto dcom
if "%con:~0,5%"=="sleep" goto sleep
if "%con:~0,9%"=="hibernate" goto hib
if "%con:~0,8%"=="shutdown" goto shutdown
if "%con:~0,7%"=="reboot" goto restart
if "%con:~0,4%"=="open" goto open.choose
if "%con:~0,8%"=="function" goto func.choose
if "%con:~0,5%"=="clear" goto clear
if "%con:~0,5%"=="debug" goto debug.choose
if "%con:~0,4%"=="test" goto test.choose
if "%con:~0,5%"=="uping" goto unlimitedPing
if "%con:~0,3%"=="ftp" goto ftp
if "%con:~0,7%"=="startup" goto startup.choose
if "%con%"=="sping" goto sping
if "%con%"=="wmic" echo ��ֹ�ڲ��л���WMIC & goto int
if "%con%"=="cmd" echo ��ֹ�ڲ��л���CMD & goto int
if "%enablenewcommand%"=="false" goto enter
if "%con%"=="%commandnamem%" %commandinm% & goto int
:enter
%con% %func.outputsystemerror%
set con= 
goto int

:goto.choose
if "%con:~5%"=="" echo ������ת���հױ�ǩ�� & goto int
if "%con:~5%"==" " echo ������ת���հױ�ǩ�� & goto int
if "%con:~5%"=="-?" goto goto.help
if "%con:~5%"=="-list" goto goto.list
set /p test=�Ƿ�ȷ����ת��%con:~5%?(y/n)^>
if "%test%"=="y" goto %con:~5%
echo �û�ȡ�������벻��ȷ��
goto int
:goto.list
cls
title �����⹦�ܱ�
echo Goto List
echo -----
echo ������
echo reload -���غ���
echo begin -��ʼ����
echo main -������
echo resolve -�Զ��������ȡ����
echo int -�����������
echo tool -���ߺ���
echo edit -�༭����
echo color -��ɫ����
echo make -MAKE����
echo ReadSpecialLine -��ȡ����
echo do -DO����
echo debug -���Ժ���
echo show -չʾ����
echo log -��־����
echo -----
echo �ֺ���
echo choose -�ж�����
echo main -�˵�/����̨����
echo help -��������
echo cfg -��Ϣ����
echo -----
echo e.g. ��Ҫ���������������� goto main
echo e.g.2 ��Ҫ����MAKE�����е��ж������������� goto make.choose
echo e.g.3 ��Ҫ����LOG�����е���Ϣ������������ goto log.cfg
echo p.s. ���ڴ󲿷� goto ��ת�ĺ�����˵�����ܻ����ȱʧ�������������
pause
goto main

:color.choose
if "%con:~6%"=="-?" goto color.help
if "%con:~6%"=="0" echo ���ܽ� COLOR ����Ϊ0
if "%con:~6%"=="yellow-milk" set color=FE & goto main
if "%con:~6%"=="coding" set color=0A & goto main
if "%con:~6%"=="blood" set color=C4 & goto main
if "%con:~6%"=="tomato" set color=CF & goto main
color %con:~6%
set color=%con:~6%
goto main

:tool.choose
if "%con:~0,5%"=="tools" echo ����ƴд��tool(û��s) & goto int
if "%con:~5%"=="-?" goto tool.help
if "%con:~5%"=="-list" goto tool.list
if "%con:~5%"=="-add" goto tool.add
if "%con:~5%"=="clean" goto toolmain-clean
if "%con:~5%"=="%custom-tool-name%" call "%custom-tool-path%"
echo %con:~5% ���ǿ��õ� Tool
goto int
:toolmain-clean
title Batch Clean Tool v1.0
echo ���� Batch Clean Tool...
echo now mode: debug
ping 127.0.0.1 -n 2 >nul
cls
echo loading log...
echo ������ Batch Clean Tool v1.0
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
echo ����� TEMP ����
ping 127.0.0.1 -n 1 >nul
echo ����� Local_TEMP ����
ping 127.0.0.1 -n 1 >nul
echo ����� Dir_TEMP ����
ping 127.0.0.1 -n 1 >nul
echo ����� ��־ ����
ping 127.0.0.1 -n 1 >nul
echo ����� Check ����
ping 127.0.0.1 -n 1 >nul
echo ����� Cookies ����
ping 127.0.0.1 -n 1 >nul
echo ����� Prefetch ����
ping 127.0.0.1 -n 1 >nul
echo ����� Recent ����
ping 127.0.0.1 -n 1 >nul
echo ����� OLD ����
ping 127.0.0.1 -n 1 >nul
echo ����� Gid ����
ping 127.0.0.1 -n 1 >nul
echo ����� user_Recent ����
ping 127.0.0.1 -n 1 >nul
echo ����� user_TIF ����
ping 127.0.0.1 -n 1 >nul
echo ����� user_TEMP ����
ping 127.0.0.1 -n 2 >nul
color 0A
echo ��������ɡ�
ping 127.0.0.1 -n 3 >nul
goto main
:tool.list
cls
title Tool �б�
echo Tool �б�
echo.
echo [1] Batch Clean Tool version 1.0 
echo ������clean
echo [2] Custom Tool Genius 1.0
echo ��������
if "%custom-tool-enabled%"=="true" echo [3] %custom-tool-nameg%
if "%custom-tool-enabled%"=="true" echo ������%custom-tool-name%
pause
goto main
:tool.add
title Tool ���
echo �󶨿��õ�CMD����
set /p custom-tool-path=Tool ��·��^>
echo ������ Tool ��·��Ϊ %custom-tool-path%
echo PS: Tool �����ƻ�չʾ��Tool �б��С�
set /p custom-tool-nameg=Tool ������^>
echo ������ Tool ������Ϊ%custom-tool-nameg%
echo PS: Tool �ı�����ʹ����ָ���С�
set /p custom-tool-name=Tool �ı���^>
echo �˶���...
echo.
echo Tool ·��: %custom-tool-path%
echo Tool ���ƣ�%custom-tool-nameg%
echo Tool ������%custom-tool-name%
set /p test=��Щ��Ϣ�Ƿ���ȷ��(y/n):
if "%test%"=="y" goto tool.add-modify
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
echo �ɹ�д�롣
echo Tool ������ɣ��������� tool %custom-tool-name% ����������Զ������
goto int

:startup.choose
if "%con:~8%"=="-?" goto startup.help
if "%unman%"=="true" goto managementerror
echo �����������ɱ�����ֹ�������Լ������������
echo copy %con:~8% "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\"
copy "%con:~8%" "%systemdrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\" || echo ����ʧ�ܣ���ֹ�� & goto int
echo �ɹ���������� %con:~8%
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
if "%con:~7%"=="-o" shutdown -r -o
if "%con:~7%"=="/o" shutdown -r -o
if "%con:~7%"=="-?" goto reboot.help
if "%con:~7%"=="/?" goto reboot.help
shutdown -r -t 0
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
if exist %nowpath%data\commands\commanding.load goto dcc
echo Ŀǰ�����ڱ������ָ�
goto int
:dcc
set /p yn=ɾ��(y/n):
if "%yn%"=="y" goto delcommand
echo �û�ȡ��������
goto int
:delcommand
del %nowpath%data\commands\commanding.load
del %nowpath%data\commands\commandname.load
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
echo read.commandname > %nowpath%data\commands\commandname.load
echo %command% >> %nowpath%data\commands\commandname.load
echo read.commanding >> %nowpath%data\commands\commanding.load
echo %commc% >> %nowpath%data\commands\commanding.load
echo �Ѵ洢 %command% ����Ϊ %commc%
call :ReadSpecialLine %nowpath%data\commands\commandname.load 1 commandnamem
call :ReadSpecialLine %nowpath%data\commands\commanding.load 1 commandinm
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
echo ���߲��ͣ�https://subilan.win/
echo Github: https://github.com/Subilan/Batch-Console-Alpha
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
echo v0.6 ������־
echo - ���� tool ���߰�������tool -?
echo - �����Զ������⣬����color -?
echo - ���� goto ������ָ�����goto -?
echo С���ֵ� Bug �Ľ���
goto int
:sys.cfg
echo [System Config]
echo ������...
systeminfo | find "��ʼ��װ����"
systeminfo | find "ϵͳ����ʱ��"
systeminfo | find "BIOS �汾"
systeminfo | find "�����ڴ�����"
ver | find "4.0." > NUL && echo System Version: Windows 95(̫����!)
ver | find "4.10." > NUL && echo System Version: Windows 98(̫����!)
ver | find "4.90." > NUL && echo System Version: Windows ME(̫����!)
ver | find "3.51." > NUL && echo System Version: Windows NT 3.5(̫����!)
ver | find "5.0." > NUL && echo System Version: Windows 2000(̫����!)
ver | find "5.1." > NUL && echo System Version: Windows XP(̫����!)
ver | find "5.2." > NUL && echo System Version: Windows 2003(̫����!)
ver | find "6.0." > NUL && echo System Version: Windows Vista(TM)
ver | find "6.1." > NUL && echo System Version: Windows 7(TM)
ver | find "6.2." > NUL && echo System Version: Windows 8(R)
ver | find "10." > NUL && echo System Version: Windows 10(R)
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
echo Ӳ������: %disksize%MiB
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
:: a=6��do\n-l\n�ĸ���
:: zlΪ����ָ�������
set a=6
set zl=%con%
:xh
if "!zl:~%a%,1!"==" " goto over
if "!zl:~%a%,1!"=="" goto err
set /a a=%a%+1
goto xh
:over
set /a b=%a%+1
set /a a=%a%-6
set comm=!zl:~%b%!
::�����
set time=-1
set loops=!zl:~6,%a%!
::���ֲ���
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
if "%unman%"=="true" echo fatal: managementerror ��Ȩ�ޡ� & goto int
if "%con:~4%"=="errormsg -?" goto errmsg.set.help
if "%con:~4%"=="color -?" goto color.set.help
if "%con:~4%"=="quickdelete -?" goto quickdelete.help
if "%con:~4%"=="outputsystemerror -?" goto outputsystemerror.help
if "%con:~4%"=="loops -?" goto loopset.help
if "%con:~4,8%"=="errormsg" goto errmsg.set
if "%con:~4,5%"=="color" goto color.set
if "%con:~4,11%"=="quickdelete" goto quickdelete
if "%con:~4,17%"=="outputsystemerror" goto outputsystemerror
if "%con:~4,5%"=="loops" goto loopset
if "%con:~4,16%"=="enablenewcommand" goto enablenewcommands
if "%con:~4%"=="/?" goto set.help
if "%con:~4%"=="-?" goto set.help
%con%
goto int

::settings
:enablenewcommands
if "%con:~4,16%"=="enablenewcommand" set con=set enablenewcommands %con:~21%
if "%con:~22%"=="true" set enablenewcommand=true & echo �������Զ���ָ� & goto int
if "%con:~22%"=="false" set enablenewcommand=false & echo �ѽ����Զ���ָ�  & goto int
echo "%con:~22%" ������Ч�Ĳ���ֵ��
goto int
:loopset
if %con:~10% lss 1 goto lfail
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
:outputsystemerror
if "%con:~22%"=="true" set outputsystemerror=true & set func.outputsystemerror= & echo ���������ϵͳ���� & echo unkown host. > C:\svd\opseTrue.svd & goto int
if "%con:~22%"=="false" set outputsystemerror=false & set func.outputsystemerror=2^>nul ^|^| goto error & echo �ѽ������ϵͳ���� & del C:\svd\opseTrue.svd 1>nul 2>nul & goto int
:color.set
if "%con:~10%"=="red" set color=0C & goto resolve
if "%con:~10%"=="blue" set color=01 & goto resolve
if "%con:~10%"=="yellow" set color=0E & goto resolve
if "%con:~10%"=="green" set color=0A & goto resolve
if "%con:~10%"=="purple" set color=05 & goto resolve
if "%con:~10%"=="white" set color=0F & goto resolve
if "%con:~10%"=="orange" echo �����������޳�ɫ�ɹ�ѡ�� & goto resolve
if "%con:~10%"=="indigo" set color=03 & goto resolve
if %con:~10,1% equ %con:~-1% echo ����������ͬ����ɫ: %con:~10% & goto int
set test1=%con:~10,1% & set test2=%con:~-1%
set /a test=%test1%+%test2% && echo �������ɫָ����%con:~10%
:cont
set color=%con:~10%
echo �ѽ�Ĭ����ɫ����Ϊ%color%��ָ����
goto resolve
:color.fail
echo FATAL ERROR: δ֪�ĺ������ã�test=test1+test2
echo �����λ��$param %con:~10%
echo ��color����Ч��
goto int
:errmsg.set
if "%con:~13%"=="default" set errormessage.bool=false & echo �ѻ�ԭ��Ĭ����Ϣ & goto int
set errormessage=%con:~13%
echo �ѽ�������Ϣ����Ϊ%errormessage%��
echo ERRORMESSAGESAVES > %nowpath%\data\files\errormessage.save
echo %errormessage% >> %nowpath%\data\files\errormessage.save
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
if "%errormessage.bool%"=="false" goto normal.error
echo %errormessage%
goto int
:normal.error
echo %con% ���Ǵ��ڻ򱻶����ָ��
goto int

:mode.choose
if "%con:~5%"=="wmic" goto main.wmic
if "%con:~5%"=="calc" goto main.calc
if "%con:~5%"=="/?" goto mode.help
if "%con:~5%"=="-?" goto mode.help
if "%con:~5%"=="wmic -?" goto mode.help-wmic
if "%con:~5%"=="calc -?" goto mode.help-calc
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

:sping
echo back ���������˵�
echo undo ��������
:sp-lines
set /p lines=������ PING ���߳�:
if %lines% GTR 15 echo �����˷��ؿ��ܻᵼ�´��������½���
if "%lines%"=="back" goto main
if "%lines%"=="undo" echo ���޿ɳ����Ĳ�����
goto sp-packages
:sp-packages
set /p packs=������ÿ�����Ĵ�С(�ֽ�):
if %packs% LSS 1 echo ���������ѡ��: С��1 & goto sp-packages
if %packs% GTR 65500 echo ���������ѡ��: ����65500 & goto sp-packages
if "%packs%"=="back" goto main
if "%packs%"=="undo" goto sp-lines
goto sp-times
:sp-times
set /p times=������ PING �Ĵ���:
if %times% GTR 500 echo ���������ѡ��: ����500 & goto sp-times
if %times% LSS 1 echo ���������ѡ��: С��1 & goto sp-times
if "%times%"=="back" goto main
if "%times%"=="undo" goto sp-packages
goto sp-ip
:sp-ip
set /p ip=������ PING �������� IP ��ַ:
if "%ip:~0,1%"=="0" echo ������0��ͷ��
if "%ip%"=="back" goto main
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
if "%loop2%"=="%lines%" goto main
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
set /p d=�� ENTER ��ɾ�����ر�...
del sping.cmd 1>nul 2>nul || echo ɾ��ʧ�ܡ�
goto main

:test.choose
if "%con:~5%"=="/?" goto test.help
if "%con:~5%"=="-?" goto test.help
if "%con:~5,5%"=="-gfw" goto gfw.test
if "%con:~5,5%"=="/gfw" goto gfw.test
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
goto int

:test.error
title Debug - ERROR
color 1C
echo %not-ok% Ŀǰ%some%��%other%��
color 1F
goto int

:gfw.test
title Debug
echo ���ڲ��� GFW ��������
ping www.google.com.hk -n 1 >nul && goto gfw.okay
set not-ok=GFW& set some=����& set other=��VPNЭ�鲻֧��(�ܿ���)& goto test.error
 :gfw.okay
color 1A
echo GFW Ŀǰ�����á�
color 1F
goto int

:return.zero
echo ftp.exe %con:~4% > ftp.cmd
start ftp.cmd
echo �ѳɹ��򿪹��� %con:~4% �� FTP ���ӡ�
goto int

:clear
if "%con:~6%"=="-?" goto clear.help
if "%con:~6%"=="/?" goto clear.help
echo ��ǰû�л���/��ʱ�ļ���
goto int

:debug.choose
if "%con:~6%"=="-?" goto debug.help
if "%con:~6%"=="/?" goto debug.help
if "%con:~6,5%"=="-view" goto debug.view
if "%con:~6,5%"=="-edit" goto debug.edit
echo ����Ĳ���: %con:~6%
goto int

::Ŀǰ��δ���ֿ�������Ԥ���Ѵ洢function�ķ�������ʱ���� Orz
:debug.view
title debug fatal
echo %con:~12% ���ǿɱ� VIEW �ĺ�����
goto int

:debug.edit
title debug fatal
echo %con:~12% ���ǿɱ� EDIT �ĺ�����
goto int

:managementerror
title FATAL: Management Error: Windows UAC denied.
echo FATAL ERROR: ��Ȩ�ޡ�
pause
goto int

:func.choose
if "%con:~9%"=="-?" goto function.help
if "%con:~9%"=="/?" goto function.help
cd.>%systemdrive%\Windows\System32\test.txt || goto managementerror
del %systemdrive%\Windows\System32\test.txt
if "%con:~9%"=="-add" goto function.add
if "%con:~9%"=="-remove" goto function.remove
if "%con:~9%"=="-call" goto function.call
echo %con:~9% ����һ����Ч�Ĳ�����
goto int
:function.add
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
if "%func:~-1%"=="\" echo ��δ��д�ļ���Ϣ�� & goto leta
if "%func:~-4%"==".cmd" set svp=%func:~7% & echo ���������·�� & goto inputsth
if "%func:~-4%"==".bat" set svp=%func:~7% & echo ���������·�� & goto inputsth
echo �������÷� .CMD �� .BAT ���ļ���
goto leta
:inputsth
echo �ѵ��� %svp%
set /p funcnum=�����뺯�����(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=�����뺯������:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main
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
goto main

:funcnumerr
echo �����ʵĴ�С��
goto savefunc

:savefunc
set /p funcnum=�����뺯�����(0~9999):
if %funcnum% LSS 0 goto funcnumerr
if %funcnum% GTR 9999 goto funcnumerr
set /p funcname=�����뺯������:
set funcpath%funcname%=%svp% & set funcpath%funcnum%==%svp%
goto main

:function.call
echo ���� back �Է��ء�
:list.select
set /p ls=�����뺯�����ƻ�����Ե���:
if "%ls%"=="back" goto main
set /a dim=%ls%+1 2>nul && call !funcpath%ls%!
call !funcpath%ls%!
echo %ls% ���Ǵ��ڵĺ������ƻ���š�
pause
goto main
:function.remove
echo ���� back �Է��ء�
:del.select
set /p ds=�����뺯�����ƻ��������ɾ��:
if "%ds%"=="back" goto main
set /a dim=%ds%+1 2>nul && del !funcpath%ds%! 1>nul 2>nul & echo �ɹ�ɾ�����Ϊ %ds% �ĺ��� & goto main
del !funcpath%ds%! 1>nul 2>nul& �ɹ�ɾ�� %ds% & goto main
echo %ds% ���Ǵ��ڵĺ������ƻ���š�
pause
goto main

::HELPS
:help
title Batch Console ^> Help Files ^> Normal
cls
echo ��ӭ�鿴������
echo.
echo SET [VARIABLE] [STRING/BOOL] ����ϵͳ�������Զ����������BC�����Դﵽ��һ��������Ч����
echo MODE [MODENAME] �л���ָ��ģʽ��������������
echo OUTPUT [STRING] ����ַ�����ָ��λ�á�
echo SETOUTPUT [PATH] ��������ַ�����λ�á�
echo CONTROL [CPLNAME] ��ָ���Ŀ��������(CPL)��
echo RELOAD ���������ʼ������(�Ѵ洢�Ĳ��ᱻ����)
echo DO [-L (times)/-T] [COMMAND] ����/ѭ��ĳһָ����ļ���
echo CONFIG [STRING] ��ʾָ����Ŀ���Ƶ� Config ��Ϣ��
echo MAKE [DIR/COM] ��������Ŀ¼�����ָ�
echo DCOM ɾ���洢��ָ�
echo OPEN [PATHNAME] ���ٴ�Ŀ¼��
echo SLEEP/SHUTDOWN/REBOOT[/O]/HIBERNATE ����˯��/�ػ�/����/���ߡ�
echo EXIT �����沢�˳���
echo FUNCTION [ADD/CALL/REMOVE] �Ժ������б༭���޶�������
echo CLEAR ���������ʱ�ļ���
echo DEBUG ���Դ��ڵĺ�����
echo TEST [-GFW] ��������/GFW����BATЭ��Ŀ�����
echo UPING [IP ADD] ʹ��-t������ĳһIP����Ping������
echo SPING ʹ�ý����߳̽���ͬʱ�Զ�PING��
echo.
echo ��ʾ������ָ������-?�������ɲ鿴��ϸ������
pause
goto main
:startup.help
echo Usage: STARTUP [PATH]
echo ��ĳ���ļ���ӵ����������
echo Ҳ����ֱ����copy���Ƶ�startupĿ¼��
echo ���ܻ�����ɱ�����ֹ��������Լ���������������
pause
goto int
:sping.help
echo Usage: SPING
echo ͬʱ���ж��CMD�̶߳�ĳһIP����ping��
echo �����Դ�� Flyfish233 ��2016�귢���ġ�Flyfish����ping��
echo ��л��
pause
goto int
:uping.help
echo Usage: UPING
echo ûʲô�ر�ģ����Ǽ��˸�-t������
pause
goto int
:clear.help
echo Usage: CLEAR
echo ɾ��δ����ʱ����Ļ��桢��ʱ�ļ���
echo ͨ����Щ�ļ�������ϵͳ��Ŀ¼������������λ�á�
echo Ҳ�����������صġ�
goto int
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
:reboot.help
echo Usage: REBOOT [/O]
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
echo outputsystemerror, quickdelete, 
echo loops, color, errormsg�ȡ�
echo �й�ÿһ�������÷�����ʹ�� set [VARIABLE_NAME] -?
goto int
:errmsg.set.help
echo Usage: set errormsg [STRING]
echo �����Զ���Ĵ�����Ϣ������ִ������ʧ�ܺ���ʾ��
echo ����Ϣ���ᱻ�洢�� data\files\errormessage.save
goto int
:color.set.help
echo Usage: set color [COLORNAME/COLORCODE ATTR]
echo �޸�����ҳ�����ɫ������ֱ������COLORNAME������
echo RED YELLOW GREEN INDIGO BLUE PURPLE
echo ������ɫ��ATTR��
goto int
:quickdelete.help
echo BOOL CONTROL
echo �������ڿ����Ƿ����ɾ��һ���ļ�����Ĭ�ϸ�����ϵͳȨ�ޡ�����ԱȨ��
echo �Ͱ���ģʽ��������õĻ�����
echo ������delָ�
goto int
:outputsystemerror.help
echo BOOL CONTROL
echo ��������Ƿ����ϵͳ������BOOLΪtrueʱ���ڱ���ʱ
echo ��������ʾĬ�ϵĴ�������û��Զ���Ĵ���
echo ��BOOLΪfalseʱ���ڱ���ʱ����ʾϵͳ�Ĵ���
goto int
:loopset.help
echo Usage: set loops [NUMBERS]
echo �޸� do -l ʱѭ�����ж�������
echo �ڶ����ַ�����ȡʱ����������־����˽�ȡ��λ����
echo Ʃ��Ҫִ��do -l 10 echo 2
echo ��ôloops����Ϊ2����Ϊ10��2λ�����Դ����ơ�
echo ����Ҫ�л���ͬλ�������֣���Ҫ��ʱ�޸ĸñ�����
echo ����ĳ�����Դ��������������ַ�����ȱ�ݡ�
echo.
echo �������λ��������������ƥ��ִ�У����п������һ��ָ�������ѭ����
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
goto int
:debug.help
echo Usage: DEBUG [-VIEW/-ADD]
echo ����һ���ɱ����������Ԥ���ɱ������
echo ����CMD�Ĺ��ܾ����ԣ��˹��ܽ��������ÿ���״̬��
goto int
:function.help
echo Usage: FUNCTION [-ADD/-REMOVE/-CALL]
echo �����ɱ���Ĺ��ܺ���(����BAT�ļ�)�����ҿ�ÿ�����µ�ȡ��
echo FUNCTION �ĺ����� Batch Console �ڲ���������ͻ��
echo FUNCTION �ĺ����޷����� Debug��
goto int
:mode.help
echo Usage: MODE [MODENAME]
echo ����ר�е�ģʽ�Ա����ò�����߸���Ч�ʵؽ��в�����
echo Ŀǰ֧�ֵ�MODENAME��������������
echo wmic, calc
echo dev��net����0.5�汾ɾ����
echo �й�ģʽ����ϸ��Ϣ�������� MODE [MODENAME] -?
goto int
:mode.help-wmic
echo Wmic ģʽ���� Windows Wmic �Ļ����ϣ���Batch�ڽ����˼򻯲�����
echo ʵ�ֵķ�ʽ�Ƕ���һ������ָ���ȡdo -l �Ķ�ȡ�㷨�����б������롣
echo �� wmic ģʽ�������һ�� dos ָ������ wmic ����ִ�С�
goto int
:mode.help-calc
echo �ù�����ǰ�� Batch Calc ��ֲ������
echo �Ժ�δθ��½��������´�һ��ģʽ����
goto int
:calc.help
title Calculator Help
cls
echo �ù����� Batch Calc v0.1 ��ֲ����
echo �ù��ܲ��õ��㷨��Powershell���㷨�����ʵ���������
echo һЩPowershell�޷�ʵ�ֵļ��㷽�����Ӷ�ʹ��������ȫ�档
echo =====================================================
echo Ŀǰ֧�ֶ������ʽ��
echo + - * / ��������
echo ���㺯����
echo power -�˷�
echo fact(orial) -�׳�
echo sqrt -����ƽ����
echo loop -ѭ��
echo addon -��Χ���
echo rand(om) -��Χ�����
echo copy -�������һ�εĽ��
echo show -��ʾ����(��show -?)
echo back -������main
echo ======================================================
echo ����ָ���ĺ�������ȫ�����ɵ�����غ������в�����
echo ���У���ຯ�����㷨���õ���Batchԭ����
echo Ϊ�˱�����ִ��ģ�ļ�������������������������
echo �������������ļ������д�����
pause
goto main.calc
:show.help
title Show Help
echo Usage: SHOW (CONSTANT_NAME) (DIGIT)
echo ֧�ֵ�CONSTANT_NAME�У�
echo pi��e��sqrt2��rho��alpha
echo ========================
echo PI Բ���ʦ�(֧��100λ)
echo E ��Ȼ����e(֧��100λ)
echo RHO �ܽ���(֧��39λ)
echo ALPHA �ڶ��Ѹ���ķ����(֧��27λ)
echo SQRT2 ������2(֧��100λ)
echo ========================
echo ������ֵ�����ռ��á�
pause
goto main.calc
:help.help
echo Usage: HELP [PARAMETER]
echo ��ʾ��صİ�����Ϣ��
echo Ŀǰ���õĸ��������У�
echo ?��cmd
echo ��������������ʾBC�ڲ��İ�����
goto int
:tool.help
echo Usage: TOOL [-ADD/-LIST / (CUSTOM TOOL NAME)]
echo ���й��ߵĵ��ã���������һ�θ��¹���֮ǰ��������Զ���һ��С����
echo ����ʹ��������Tool List���ҿɱ� call ���á�
echo ʹ�� -add ���������һ���Զ���bat���ߡ�
goto int
:color.help
echo Usage: COLOR [THEMENAME / ATTR]
echo �Զ��������� main ҳ���������ɫ��
echo Ŀǰ�����˿ɴ���ATTR��Ӣ�ģ���
echo yellow-milk ���� coding ��
echo ����㲻ϰ����Ӣ�ģ���Ȼ������ATTR��setָ�
goto int
:: ��ʱ����
:edit.help
echo Usage: EDIT [VAR / PARAMETER] [STRING]
echo �༭ Batch Console ���ڲ������Դﵽ��һ����Ч����
echo ������޷�ʹ�� set ָ��ֱ�ӱ༭�������ڲ������ģ����ڿ����ˡ�
echo ���� -list �����г���ǰ�汾�����е����ñ�����
echo ���ǣ��˱༭����ʱ�Եģ��������´򿪱������ԭ�ȴ洢�Ľ��ᱻ���¶�ȡ��δ�洢�Ľ��ᶪʧ��
goto int
:goto.help
echo Usage: GOTO [FUNCTION / PARAMETER]
echo ���� Batch Console ��һ��������
echo ���� -list �����г���ǰ�汾�е��������ú�����
echo ���棺���Ƽ�ʹ�ô�ָ���Ϊ������ɳ���������ȶ���
goto int

:comload
if exist %nowpath%data\commands\commandname.load goto continue.comload
echo ȱ��LOAD�ļ��� & goto comload.back
:continue.comload
set enablenewcommand=true
call :ReadSpecialLine %nowpath%data\commands\commanding.load 1 commandinmo
call :ReadSpecialLine %nowpath%data\commands\commandname.load 1 commandnameo
set commandinm=%commandinmo:~0,-1%
set commandnamem=%commandnameo:~0,-1%
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
echo ���� ? �鿴����
:char-output
if not "%opt%"=="" echo %opt%
:char
set /p cal=
if "%cal%"=="?" goto calc.help
if "%cal%"=="power" goto calc.power
if "%cal%"=="fact" goto calc.factorial
if "%cal%"=="factorial" goto calc.factorial
if "%cal%"=="rand" goto calc.random
if "%cal%"=="random" goto calc.random
if "%cal%"=="loop" goto calc.loop
if "%cal%"=="addon" goto calc.loop-addon
if "%cal%"=="sqrt" goto calc.sqrt
if "%cal%"=="back" goto main
if "%cal%"=="copy" echo %cliphood% | clip & echo %cliphood% �Ѹ��Ƶ������� & goto char
if "%cal:~0,4%"=="show" goto calc.show
call :calc.core
:calc.output
set cliphood=%opt%
goto char-output

:calc.core
for /f "delims=" %%a in ('powershell "%cal%"') do set opt=%%a & goto :eof

:calc.err
echo ����ȷ�ı��ʽ������
goto char

:calc.power
set /p dishu=������"����":
set /p zhishu=������"ָ��":
if %zhishu% gtr %powerMAX% echo ���ƣ�ָ�����ܴ���%powerMAX%�� & goto char
echo ������%dishu%^^%zhishu%
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
if "%time%"=="%zhishu%" goto power.end
goto power.loop
:power.end
set opt=%dimshu%
set cliphood=%opt%
goto char-output

:calc.factorial
set /p fact=������"�׳˲�����":
if %fact% GTR 16 echo ���ƣ��׳˲��������ܴ���16�� & goto char
if "%fact%"=="1" echo 1 & set cliphood=1 & goto char
if "%fact%"=="0" echo 0 & set cliphood=0 & goto char
goto factorial
:factorial
set a=%fact%
set b=%fact%
:fact.loop
set /a a=%a%-1
set /a b=%b%*%a%
if %errorlevel% NEQ 0 echo δ֪���󣺷���ֵNEQ 0 & goto char
if "%a%"=="1" set opt=%b% & set cliphood=%b% & goto char-output
goto fact.loop

:calc.random
set /p r1=������"��Χ��Сֵ":
set /p r2=������"��Χ���ֵ":
if %r2% LSS %r1% echo �������ֵ��Сֵ��ͻ�� & goto char
set /a r3=%r2%-%r1%-1
set /a randem=%random%%%%r3% +%r1%
echo %randem%
set cliphood=%randem%
goto char

:calc.sqrt
set /p sqrt=������"��������":
if %sqrt% LSS 1 echo ���ܼ��������� & goto char
if %sqrt% GTR 214748 echo ���ƣ������������ܴ���2147428�� & goto char
:sqroot
set a=%sqrt%
set /a a*=10000,b=a
for /l %%a in (1,1,100) do set /a b=(b+a/b)/2
set /a c=b*b,a/=10000
set sqr=%b:~,-2%.%b:~-2%
set sqrr=%b:~-2%
if "%sqrr%"=="00" set sqr=%sqr:~0,-3% & set cliphood=%sqr:~0,-3% & echo %sqr:~0,-3% & goto char
echo Լ%sqr%
set cliphood=%sqr%
goto char

:calc.loop
set times= 
set time= 
set /p times=������"ѭ������":
set /a test=%times%+1 || goto loop.fail
set /p mem=������"������"(����ʽ�ͷ���Ǹ���, ��6):
set /p doin=������"�������ʽ"(��Ҫ������������ı��ʽ, ��+72-9*3):
echo ѭ����ִ��%%number%%%doin% ���������
echo ����滮��ʾ������
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
echo ����δ֪�ı��ʽ������
goto char

:calc.loop-addon
set /p from=������"��ʼ��":
if %from% lss 0 echo Ŀǰ�޷����и���������㡣 & goto char
set /p to=������"����":
if %to% lss %from% echo ������ĩ���С��ͻ�� & goto char
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
echo �޷�ʶ���������
goto char

:calc.show
if "%cal:~5%"=="-?" goto show.help
if "%cal:~5,2%"=="pi" goto show.pi
if "%cal:~5,3%"=="rho" goto show.rho
if "%cal:~5,1%"=="e" goto show.e
if "%cal:~5,5%"=="sqrt2" goto show.sqrtt
if "%cal:~5,5%"=="alpha" goto show.alpha
echo %cal:~5% ����һ����Ч�ĳ������ơ�
goto char

:show.pi
set nume=%cal:~8%
if %nume% lss 1 echo ���֧��1λ�С� & goto char
if %nume% gtr 100 echo ���֧��100λ�С� & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!pi:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.e
set nume=%cal:~7%
if %nume% lss 1 echo ���֧��1λe�� & goto char
if %nume% gtr 100 echo ���֧��100λe�� & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!e:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.rho
set nume=%cal:~9%
if %nume% lss 1 echo ���֧��1λrho�� & goto char
if %nume% gtr 39 echo ���֧��39λrho�� & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!rho:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.sqrtt
set nume=%cal:~11%
if %nume% lss 1 echo ���֧��1λsqrt2�� & goto char
if %nume% gtr 100 echo ���֧��100λsqrt2�� & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!sqrtt:~0,%nume%!
set cliphood=%show%
echo %show%
goto char
:show.alpha
set nume=%cal:~11%
if %nume% lss 1 echo ���֧��1λalpha�� & goto char
if %nume% gtr 27 echo ���֧��27λalpha�� & goto char
set /a test=%nume%+1 || goto show.err
set /a nume=%nume%+2
set show=!alpha:~0,%nume%!
set cliphood=%show%
echo %show%
goto char

:show.err
echo �����޷�ʶ��Ľ�ȡλ����
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
echo WMICģʽ ����
echo.
echo wmic ģʽĿǰֻ��һ����������ļ򻯰�
echo ��δ���������صĸĶ�������ר��ָ�
echo ��Ҫֱ��ִ��wmic ָ�����ֱ������س���
echo ���磬Ҫ����desktop get name����ֱ������س����ɡ�
echo ���� -? �鿴wmic���ð�����
echo ����back���ء�
pause
goto main.wmic
:main.wmic
cls
color 0A
title Wmic //%username%-LOCALHOST
echo Wmic [vBeta]
echo ���� ? �Բ鿴����
:sol
set /p wim=
if "%wim%"=="?" goto wmic.help
if "%wim%"=="back" goto main
if "%wim%"=="-?" wmic -?
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
