@echo off
>nul 2>&1 net session || (
    powershell -Command "Start-Process '%~f0' -WorkingDirectory '%~dp0' -Verb RunAs"
    exit /b
)
cd /d "%~dp0"
dotnet run
pause
