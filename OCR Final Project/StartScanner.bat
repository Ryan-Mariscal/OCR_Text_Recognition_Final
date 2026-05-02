@echo off
title AI OCR Scanner - Command Center
color 0B

:: 1. Find the Network IP Address automatically
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do set IP=%%a
set IP=%IP: =%

echo ========================================
echo        AI OCR SCANNER: COMMAND CENTER
echo ========================================
echo.
echo 1. Connect your phone to the SAME Wi-Fi as this PC.
echo 2. Open your phone's browser and type in:
echo.
echo    https://%IP%:5000
echo.
echo 3. If a "Privacy Warning" appears, tap "Advanced"
echo    and then "Proceed" or "Visit Website".
echo.
echo 4. Point your phone at text and hit 'Capture'.
echo ========================================
echo.

:: 2. Open the scanner on your PC browser automatically
start https://localhost:5000

:: 3. Start the server
echo [3/3] Starting Server...

IF NOT EXIST "Scripts\python.exe" (
    echo.
    echo ERROR: Virtual environment not found!
    echo Please run: python -m venv Scripts
    echo Then run: Scripts\pip install -r requirements.txt
    pause
    exit
)

"Scripts\python.exe" app.py
pause

"Scripts\python.exe" app.py
pause