@echo off
echo ========================================
echo   Portfolio Website - Quick Start
echo ========================================
echo.
echo This will start your website server.
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
echo ========================================
echo   Starting Python Server...
echo ========================================
echo.
echo Server starting on: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.
python -m http.server 8000
goto end

:nodejs
echo.
echo ========================================
echo   Starting Node.js Server...
echo ========================================
echo.
echo Server starting on: http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo.
npx http-server -p 8000
goto end

:php
echo.
echo ========================================
echo   Starting PHP Server...
echo ========================================
echo.
echo Server starting on: http://localhost:8000
echo.
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

