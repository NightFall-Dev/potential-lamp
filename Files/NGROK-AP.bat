@echo off
echo region: ap>>ngrok.yml
echo tunnels:>>ngrok.yml
echo     default:>>ngrok.yml
echo         proto: tcp>>ngrok.yml
echo         addr: 3389>>ngrok.yml
copy "C:\Users\runneradmin\AppData\Local\ngrok.yml" "C:\Windows\System32\"
nssm install ngrok C:\Windows\System32\ngrok.exe start --all --config ngrok.yml
