@echo off
setlocal enabledelayedexpansion

for /r %%i in (*.java) do (
    set "filename=%%i"
    echo Converting !filename! to UTF-8...
    powershell -Command "(Get-Content '%%i' -Encoding Unknown) | Set-Content '%%i' -Encoding UTF8"
)

echo All files converted to UTF-8.
pause
