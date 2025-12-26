@echo off
echo ==========================================
echo   AR Airplane - Local Development Server
echo ==========================================
echo.
echo Starting local web server...
echo Open your browser to: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.

REM Check if Python is available
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo Using Python to start server...
    python -m http.server 8000
) else (
    REM Check if Node.js is available
    node --version >nul 2>&1
    if %errorlevel% == 0 (
        echo Using Node.js to start server...
        echo Installing http-server (if needed)...
        call npx http-server -p 8000
    ) else (
        echo.
        echo ERROR: Neither Python nor Node.js found!
        echo.
        echo Please install one of the following:
        echo   - Python: https://www.python.org/downloads/
        echo   - Node.js: https://nodejs.org/
        echo.
        echo Or upload to GitHub Pages for testing.
        pause
    )
)
