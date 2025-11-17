@echo off
cd /d "%~dp0"
echo Starting Paper Piano Web Version...
echo.

REM Check if port 8000 is already in use and kill existing processes
netstat -ano | findstr :8000 >nul 2>&1
if %errorlevel% == 0 (
    echo Port 8000 is already in use. Freeing port...
    for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8000 ^| findstr LISTENING') do (
        taskkill /F /PID %%a >nul 2>&1
    )
    timeout /t 1 /nobreak >nul
)

echo.
echo Starting server on port 8000...
echo Opening in browser...
start http://localhost:8000/app.html
echo.
echo Server running at: http://localhost:8000
echo Press Ctrl+C to stop the server
echo.

REM Use Python's built-in HTTP server
python -m http.server 8000

pause
