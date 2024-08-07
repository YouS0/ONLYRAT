@echo off

@REM powershell Start-Process powershell.exe -WindowStyle Hidden 

powershell -C "Invoke-WebRequest -Uri 'http://ipv4.download.thinkbroadband.com/10MB.zip' -OutFile 'poc.zip'"

