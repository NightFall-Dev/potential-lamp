@echo off
echo region: ap>>config.yml
echo tunnels:>>config.yml
echo     default:>>config.yml
echo         proto: tcp>>config.yml
echo         addr: 3389>>config.yml
nssm install ngrok C:\Windows\System32\ngrok.exe start --all --config config.yml
