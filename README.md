# OCR Text Recognition Scanner

A real-time OCR application that captures text through a camera and displays it in plain text, able to be copied.
All relevent files are nested inside of the OCR Final Project folder.

## Details
This Scanner is an OCR (Optical Character Recognition) project using [OpenOCR](https://github.com/Topdu/OpenOCR). It runs by starting a local server on a device, which is how the scanner works, and will only work with the server online. When starting the server, it will open a terminal popup, which carries instructions to run the scanner on a mobile device, a copy of all scanned text when available, and server info. The scanner can be turned off by opening the terminal popup and pressing CTRL + C.

The scanner works by taking a screencap from the device's camera, running the screencap through the OpenOCR machine learning algorithm, and printing out the plain text of the scanned text in both the scanner webpage and the terminal. Since the scanner takes a screencap from the camera, it is not required to hold the text in frame of camera until text is printed out in the text box or terminal. 

On the webpage, there is a textbox where the scanned text will appear, along with a confidence percentage for the scanned text, given by the algorithm. The scanner will only print out text that it has a >60% average confidence percentage for. There is also a copy button in the text box, which will copy the text in the box to the device's clipboard.

Above the text box, there is a dropdown menu called 'Fixes', featuring completely optional toggles. Each toggle comes with an info box aswell, showing what the toggle does and its usecases.


## Prerequisites
- Python
- If using a mobile device, it must be on the same local network as the PC.

## Installation
Install the required Python packages:
pip install -r requirements.txt

# How to Use
## Computer
1. Run StartScanner.bat or execute 'python app.py' (This will start the local server necessary to run the Scanner).
2. If prompted with a warning on the webpage, click 'Advanced', then 'Continue'. You might have to refresh the page if the page does not load at first.
3. 
<ins>Do not close the terminal popup, you need it to stop the scanner.</ins>

## Mobile Device
1. Run StartScanner.bat or execute 'python app.py' (This will start the local server necessary to run the Scanner).
2. If prompted with a warning on the webpage, click 'Advanced', then 'Continue'. You might have to refresh the page if the page does not load at first.
3. Follow the instructions in the Command Prompt/Terminal that should have opened when you started StartScanner.bat or executed 'python app.py'.
4. <ins>The device running the Scanner Server and the mobile device are REQUIRED to be on the same network/WiFi.</ins>

<ins>Do not close the terminal popup, you need it to stop the scanner.</ins>

## 'Fixes' Tab
The options in the 'Fixes' dropdown menu are optional toggles that can be turned off or on, depending on what the user is scanning and what characters make sense in the scanned text.

## Closing the Scanner
1. Open the terminal popup that appeared when you ran StartScanner.bat or executed 'python app.py'
2. Press CTRL + C to turn off the server.
3. Close terminal and the scanner webpage.

## Tech Stack
- Python
- Flask
- EasyOCR
- OpenCV
- HTML5/JavaScript (Camera Stream API)
