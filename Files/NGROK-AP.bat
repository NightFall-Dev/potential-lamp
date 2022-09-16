@echo off
echo region: ap>> "%HOMEPATH%\AppData\Local\ngrok\ngrok.yml"
echo tunnels:>> "%HOMEPATH%\AppData\Local\ngrok\ngrok.yml"
echo     default:>> "%HOMEPATH%\AppData\Local\ngrok\ngrok.yml"
echo         proto: tcp>> "%HOMEPATH%\AppData\Local\ngrok\ngrok.yml"
echo         addr: 3389>> "%HOMEPATH%\AppData\Local\ngrok\ngrok.yml"
nssm install ngrok C:\Windows\System32\ngrok.exe start --all --config ngrok.yml
