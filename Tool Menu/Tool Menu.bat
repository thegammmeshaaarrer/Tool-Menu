@echo off
:c
cls
title Tool Menu
echo ()()()()()()()()()()FreakyFish()()()()()()()()()()
Color 0f
echo Enter 1 for Pinging menu:
echo Enter 2 for Traceroute menu:
echo Enter 3 for DNS Troubleshoot menu:
echo Enter 4 for IP changer menu:
set /p ans="Enter Number..."

if %ans%==1 (
goto a
)
if %ans%==2 (
goto b
)
if %ans%==3 (
goto f
)
if %ans%==4 (
goto I
)

:a
cls

echo You are at the pinging menu

title Pinging Tool

echo how to ping

echo put the ip into the [] besides the ping command in the code of the program and delete the [].

set /p ans="Press Enter to ping or c to go back..."

if %ans%==ENTER (
goto d
)
if %ans%==c (
goto c
)

:d
echo are you sure?

set /p ans="Press Enter to continue or c to go back"

if %ans%==ENTER (
goto e
)
if %ans%==c (
goto c
)

:e

echo x=msgbox("You are pinging your victim" ,1, "Attention") >> msgbox.vbs

start msgbox.vbs

Color 0a

ping 81.169.145.72 -n 10 -l 1000

echo thanks for using this project I programmed in just some minutes.

pause
del msgbox.vbs
cls
goto c

:b
title Traceroute Menu
cls
Color 0a
set /p ans="Press Enter to start or c to go back..."
if %ans%==ENTER (
goto o
)
if %ans%==c (
goto c
)
:o
echo Traceroute initiated...
TRACERT 81.169.145.72

pause
cls
goto c

:f

cls
title dns stuff
Color 0f
echo Enter 1 for menu:
echo Enter 2 for dns traceroute:
echo Enter 3 for flush dns:
set /p ans="Enter Number..."

if %ans%==1 (
goto c
)
if %ans%==2 (
goto g
)
if %ans%==3 (
goto l
)


:g
cls
Color 0a
title dns traceroute
ipconfig /displaydns
ipconfig /displaydns | clip
echo Info has been copied to your clipboard.
pause
cls
goto f

:l
cls
Color 0a
title flush dns

set /p ans=="Enter to flush dns or c to go back"
if %ans%==ENTER (
goto m
)
if %ans%==c (
goto f
)

:m
cls
echo Enter to Start
pause
ipconfig /flushdns
echo finshed action
pause
goto c

:I
cls
Color 0a
title Ip changer
echo Enter to start
pause
ipconfig /release "Wi-Fi"
ipconfig /renew
pause
cls
goto c