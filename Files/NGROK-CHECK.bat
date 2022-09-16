@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
:: SET PASSWORD
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP: %ID%
set ID=tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo User: runneradmin
echo Pass: gk3Duvcpw72zSOo
curl -O https://raw.githubusercontent.com/jtmaveryk/ngrok/main/Files/DisablePasswordComplexity.ps1 > out.txt 2>&1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
sc start audiosrv >nul
sc config Audiosrv start=auto >nul
::ICACLS C:\Windows\Temp /grant administrator:F >nul
::ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul
