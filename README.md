# OCR Text Recognition Scanner

A real-time OCR application that captures text through a camera and displays it in plain text, able to be copied.
All relevent files are nested inside of the OCR Final Project folder.

## Prerequisites
- Python
- If using a mobile device, it must be on the same local network as the PC.

## Installation
Install the required Python packages:
pip install -r requirements.txt

# Usage
## Computer
1. Run StartScanner.bat or execute 'python app.py' (This will start the local server necessary to run the Scanner).
2. If prompted with a warning on the webpage, click 'Advanced', then 'Continue'. You might have to refresh the page if the page does not load at first.

## Mobile Device
1. Run StartScanner.bat or execute 'python app.py' (This will start the local server necessary to run the Scanner).
2. If prompted with a warning on the webpage, click 'Advanced', then 'Continue'. You might have to refresh the page if the page does not load at first.
3. Follow the instructions in the Command Prompt/Terminal that should have opened when you started StartScanner.bat or executed 'python app.py'.
4. <ins>The device running the Scanner Server and the mobile device are REQUIRED to be on the same network/WiFi.</ins>

## Tech Stack
- Python
- Flask
- EasyOCR
- OpenCV
- HTML5/JavaScript (Camera Stream API)
