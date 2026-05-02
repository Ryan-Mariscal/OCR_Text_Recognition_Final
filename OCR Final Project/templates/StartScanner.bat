@echo off
title AI OCR Scanner - Command Center
color 0B
echo ==================================================
echo           AI OCR SCANNER: COMMAND CENTER
echo ==================================================
echo.

:: 1. Install necessary libraries
echo [1/3] Checking for required libraries...
pip install -r requirements.txt --quiet

:: 2. Find the Network IP Address automatically
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do set IP=%%a
set IP=%IP: =%

echo [2/3] Server Address Generated: https://%IP%:5000
echo.
echo --------------------------------------------------
echo             HOW TO SCAN WITH YOUR PHONE
echo --------------------------------------------------
echo  1. Connect your phone to the SAME Wi-Fi as this PC.
echo  2. Open your phone's browser and type in:
echo.
echo       https://%IP%:5000
echo.
echo  3. If a "Privacy Warning" appears, tap 'Advanced' 
echo     and then 'Proceed' or 'Visit Website'.
echo.
echo  4. Point your phone at the text and hit 'Capture'.
echo     The text will be sent back to this PC's terminal!
echo --------------------------------------------------
echo.

:: 3. Start the server
echo [3/3] Starting Server...
echo (Keep this window open while scanning!)
echo.
python app.py
pause