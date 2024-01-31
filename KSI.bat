@echo off
echo Pemindai sedang berjalan..

:: Execute PowerShell command to list PSDrives
powershell -Command "Get-PSDrive"

:: Execute PowerShell command to change directory to HKLM
powershell -Command "cd HKLM:"

:: Execute PowerShell command to get item from the specified registry path
powershell -Command "Get-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run'"

:: Open the %temp% directory in a new window
start %temp%

:: Open a new PowerShell window and run netstat
start powershell -Command "netstat -a"

:: Open a Windows Microsoft Malware Removal
start mrt

echo Pemindai selesai, silahkan lakukan analisis.

:: Pause to keep the console window open
pause