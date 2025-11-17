@echo off
cd /d "%~dp0"
echo Starting Paper Piano Web Version...
echo.

REM Check if port 8000 is already in use
netstat -ano | findstr :8000 >nul 2>&1
if %errorlevel% == 0 (
    echo Port 8000 is already in use. Attempting to free it...
    echo.
    echo Please close any existing servers or use a different port.
    echo You can also manually kill the process using:
    echo taskkill /F /PID [process_id]
    echo.
    choice /C YN /M "Do you want to try a different port (8080)?"
    if errorlevel 2 goto :end
    if errorlevel 1 (
        set PORT=8080
        set URL=http://localhost:8080/app.html
    )
) else (
    set PORT=8000
    set URL=http://localhost:8000/app.html
)

echo.
echo Starting server on port %PORT%...
echo Opening in browser...
start %URL%
echo.
echo Server running at: %URL%
echo Press Ctrl+C to stop the server
echo.

REM Use Python's built-in HTTP server
python -m http.server %PORT%

:end
pause
