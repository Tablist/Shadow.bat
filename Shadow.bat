@ECHO OFF
color 40
title Shadow.bat
cls


:volver
set/p codigo=insert code=
if %codigo%==SCORGUESHADOW LOFFEDSHADOW SHOYOSHADOW DALEGASSHADOW COESINHOSHADOW SANTISHADOW ASPIRADORASHADOW LOCKEYSHADOW INBOXSHADOW (goto seguir) else goto no
:seguir
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                       
echo.
echo.
echo                                    ______     __  __     ______     _____     ______     __     __    
echo                                   /\  ___\   /\ \_\ \   /\  __ \   /\  __-.  /\  __ \   /\ \  _ \ \   
echo                                   \ \___  \  \ \  __ \  \ \  __ \  \ \ \/\ \ \ \ \/\ \  \ \ \/ ".\ \  
echo                                    \/\_____\  \ \_\ \_\  \ \_\ \_\  \ \____-  \ \_____\  \ \__/".~\_\ 
echo                                     \/_____/   \/_/\/_/   \/_/\/_/   \/____/   \/_____/   \/_/   \/_/ 
echo.
echo.
echo.                                                          
echo.                                                                    
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                                       
echo                                                                __     
echo                                                               /\ `\   
echo                                                          __   \`\  \  
echo                                                         /\_\   `\`\ \ 
echo                                                         \/_/_   `\/' \
echo                                                           /\_\   /\__/
echo                                                           \/_/   \/_/ 
echo.                                                          
echo.                                                                    
echo.
echo.
echo.
echo.
echo.
ping localhost -n 2 >nul

cls
echo Code Correct.
ECHO. ---------------------------------------------
ECHO         [Shadow.bat]
ECHO. ---------------------------------------------
ECHO.
ECHO. 
ECHO = [1] Misplace (0.5)
ECHO = [2] Reach (0.3)
ECHO = [3] SmoothPots (0.10)
ECHO = [4] HitDetection (0.7)
ECHO = [5] SmoothKB (0.4)
ECHO = [6] Connection Booster (0.5)
ECHO = [7] MTU (0.4)
ECHO = [8] FPS BOOST (0.1)
ECHO = [9] OP HIT (0.6)
ECHO. 
ECHO.
ECHO.
ECHO.
SET /P choix=-
if %choix%==1 (Goto :Misplace)
if %choix%==2 (Goto :Reach)
if %choix%==3 (Goto :Pots)
if %choix%==4 (Goto :Hit)
if %choix%==5 (Goto :KB)
if %choix%==6 (Goto :Connection)
if %choix%==7 (Goto :Mtu)
if %choix%==8 (Goto :Fps)
if %choix%==9 (Goto :OpHit)


:OpHit
Color40
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled


:Fps
color 40
/s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls 
FOR /F "tokens=1, 2 * " %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) 
for /F " tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>
goto theEnd
:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=


:Mtu
netsh interface ipv4 set subinterface "1" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Internet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "WiFi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Local Area Connection" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Wireless" mtu=1500 store=persistent
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=

:Connection
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global chimney=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=disabled
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=

:Misplace

(
sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
ping localhost -n 2 >nul
wmic process where ProcessId=%pid% CALL setpriority "idle"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"
wmic process where name="javaw.exe" CALL setpriority "realtime"
ping localhost -n 2 >nul
netsh interface tcp set global autotuning=restricted
ping localhost -n 2 >nul
netsh int tcp set global chimney=enable
netsh int tcp set global autotuninglevel=disabled
netsh int tcp set global ecncapability=disabled
netsh interface tcp set global ecncapability=disabled
netsh int tcp set global rss=default
netsh int tcp set global congestion provider=ctcp
netsh int tcp set heuristics disabled
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global dca=disabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=none
netsh int tcp set global autotuninglevel=high
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enable
netsh int tcp set global netdma=enable
netsh int tcp set heuristics enable
netsh int tcp set global rss=enabled
netsh int tcp set global timestamps=enable
ping localhost -n 2 >nul
cd %temp%
ECHO > SG_Vista_TcpIp_Patch.reg Windows Registry Editor Version 5.00 
ECHO >> SG_Vista_TcpIp_Patch.reg [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters] 
ECHO >> SG_Vista_TcpIp_Patch.reg "Disable Bandwidth Throttling"=dword:00000001
regedit /s SG_Vista_TcpIp_Patch.reg
del SG_Vista_TcpIp_Patch.reg
ipconfig /flushdns
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=










:Reach
ipconfig /renew
netsh interface tcp set global autotuning=normal
ipconfig /flushdns
echo 100% %
color 0b
netstat -e
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=














:Pots
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=






















:Hit
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces`) do (
Reg.exe add %%i /v "TCPNoDelay" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
Reg.exe add %%i /v "TCPDelAckTicks" /d "0" /t REG_DWORD /f
) >nul 2>&1
ping localhost -n 2 >nul
(
sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "realtime"
Reg.exe query "HKU\S-1-5-19\Environment" >nul 2>&1
if not "%errorlevel%" EQU "0"
ping localhost -n 2 >nul
ECHO.
ECHO.
ECHO Press enter to continue 
ECHO.
ECHO.
set/p z=

color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0B
netsh int tcp set heuristics disabled
color 0B
netsh int tcp set global rss=enabled
color 0B
netsh int tcp set global chimney=enabled
color 0B
netsh int tcp set global autotuninglevel=normal
color 0B
netsh int tcp set global congestionprovider=ctcp
color 0B
netsh int tcp set global ecncapability=disabled
color 0B
netsh int tcp set global timestamps=disabled
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0B
netsh int tcp set heuristics disabled
color 0B
netsh int tcp set global rss=enabled
color 0B
netsh int tcp set global chimney=enabled
color 0B
netsh int tcp set global autotuninglevel=normal
color 0B
netsh int tcp set global congestionprovider=ctcp
color 0B
netsh int tcp set global ecncapability=disabled
color 0B
netsh int tcp set global timestamps=disabled
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0D
netsh int tcp set global chimney=enabled
color 0D
netsh int tcp set global autotuninglevel=normal
color 0D
netsh int tcp set global congestionprovider=ctcp
color 5
netsh int tcp show global
color 0B
netsh int tcp set heuristics disabled
color 0B
netsh int tcp set global rss=enabled
color 0B
netsh int tcp set global chimney=enabled
color 0B
netsh int tcp set global autotuninglevel=normal
color 0B
netsh int tcp set global congestionprovider=ctcp
color 0B
netsh int tcp set global ecncapability=disabled
color 0B
netsh int tcp set global timestamps=disabled
cls
ECHO.
ECHO.
ECHO Press enter to continue 
ECHO.
ECHO.
set/p z=
netsh interface ipv4 set subinterface "Ethernet" mtu=1464 store=persistent 
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=


:KB
(
sc config "BITS" start= auto
sc start "BITS"
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "idle"
(
sc config "Dnscache" start= demand
sc start "Dnscache"
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
) >nul 2>&1
wmic process where ProcessId=%pid% CALL setpriority "realtime"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"
wmic process where name="javaw.exe" CALL setpriority "realtime"
pause
cls
ECHO.
ECHO.
ECHO Enjoy :) 
ECHO.
ECHO.
set/p z=