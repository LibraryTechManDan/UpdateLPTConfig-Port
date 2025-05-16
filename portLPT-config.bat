@echo off
setlocal

set "configFile=C:\ProgramData\EnvisionWare\lptone\lptclient\config\lptclient.properties"

> "%configFile%" (
    echo tpclauncher=0
    echo tpclauncher.port=30044
    echo jqe.host=192.168.130.220
    echo jqe.messaging.port=6987
    echo updatecheck.interval.minutes=60
    echo jqe.autodiscover.port=0
)

echo.
echo [✓] Config file updated.
pause
endlocal
