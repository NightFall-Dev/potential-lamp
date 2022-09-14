@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" >nul
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F >nul
net user installer /delete >nul
echo All done! Connect VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "I can't find NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Actions secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels"
echo User: runneradmin
echo Pass: gk3Duvcpw72zSOo
curl -o "%UserProfile%\Downloads\npp.8.4.5.Installer.x64.exe" https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.4.5/npp.8.4.5.Installer.x64.exe >nul

sc start audiosrv >nul
sc config Audiosrv start=auto >nul
ICACLS C:\Windows\Temp /grant runneradmin:F >nul
ICACLS C:\Windows\installer /grant runneradmin:F >nul
ping -n 10 127.0.0.1 >nul