@echo off
echo Pemindai sedang berjalan..

:: Cek IP
powershell -Command "ipconfig /all"

:: Execute PowerShell command to list PSDrives
powershell -Command "Get-PSDrive"

:: Execute PowerShell command to change directory to HKLM
powershell -Command "cd HKLM:"

:: Execute PowerShell command to get item from the specified registry path
powershell -Command "Get-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run'"

:: Open the %temp% directory in a new window
start %temp%

:: Cek Remote
start systempropertiesadvanced

:: Cek Routing 
start powershell -NoExit -Command "tracert 8.8.8.8"

:: Open a new PowerShell window and run netstat
start powershell -NoExit -Command "netstat -a"

:: Open a new PowerShell window and run arp to map network path
start powershell -NoExit -Command "arp -a -v"

:: Open a new PowerShell window and run ping to check connectivity
start powershell -NoExit -Command "ping 8.8.8.8"

:: Open a Windows Microsoft Malware Removal
start mrt

:: Open a Windows Device Management to check Bluetooth Adapter
start devmgmt.msc

:: Open Windows Services to check remote services
start services.msc

:: Open a Windows Registry Editor
start regedit

echo Pemindai selesai, silahkan lakukan analisis.

:: Pause to keep the console window open
pause