@echo off
echo region: ap>>ngrok.yml
echo tunnels:>>ngrok.yml
echo     default:>>ngrok.yml
echo         proto: tcp>>ngrok.yml
echo         addr: 3389>>ngrok.yml
echo         cidr-allow: 0.0.0.0/32>>ngrok.yml