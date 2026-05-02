# Mobile-to-PC OCR Scanner

A real-time OCR application that captures text via a mobile device camera and displays results on a desktop terminal.

## Prerequisites
- Python
- If using a mobile device, it must be on the same local network as the PC.

## Installation
Install the required Python packages:
pip install -r requirements.txt

# Usage
## Computer
1. Run StartScanner.bat or execute 'python app.py'.
2. If prompted with a warning on the webpage, click 'Advanced', then 'Continue'. You might have to refresh the page if the page does not load at first.

## Mobile Device
1. Run StartScanner.bat or execute 'python app.py'.
2. If prompted with a warning on the webpage, click 'Advanced', then 'Continue'. You might have to refresh the page if the page does not load at first.
3. Follow the instructions in the Command Prompt/Terminal that should have opened when you started StartScanner.bat or executed 'python app.py'.

## Tech Stack
- Python
- Flask
- EasyOCR
- OpenCV
- HTML5/JavaScript (Camera Stream API)