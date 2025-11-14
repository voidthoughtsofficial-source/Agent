@echo off
echo ========================================
echo   Portfolio Website - Local Server
echo ========================================
echo.
echo This script will start a local web server.
echo.
echo Choose your server:
echo   1. Python (if installed)
echo   2. Node.js http-server (if installed)
echo   3. PHP (if installed)
echo   4. Exit
echo.
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto python
if "%choice%"=="2" goto nodejs
if "%choice%"=="3" goto php
if "%choice%"=="4" goto end
goto invalid

:python
echo.
echo Starting Python server...
echo Open your browser at: http://localhost:8000
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8000
goto end

:nodejs
echo.
echo Starting Node.js server...
echo Open your browser at: http://localhost:8000
echo Press Ctrl+C to stop the server
echo.
npx http-server -p 8000
goto end

:php
echo.
echo Starting PHP server...
echo Open your browser at: http://localhost:8000
echo Press Ctrl+C to stop the server
echo.
php -S localhost:8000
goto end

:invalid
echo.
echo Invalid choice. Please try again.
pause
goto end

:end
