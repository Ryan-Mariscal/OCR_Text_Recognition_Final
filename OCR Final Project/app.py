from flask import Flask, render_template, request, jsonify
import easyocr
import cv2
import numpy as np
import base64

app = Flask(__name__)
reader = easyocr.Reader(['en'])

@app.route('/')
def index():
    # Send the HTML page to the phone
    return render_template('index.html')

@app.route('/process_frame', methods=['POST'])
def process_frame():
    # 1. Get and decode the image
    data = request.json['image']
    img_data = data.split(',')[1]
    
    nparr = np.frombuffer(base64.b64decode(img_data), np.uint8)
    frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
    
   # A. Convert to Grayscale (Removes color noise without losing quality)
    gray_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    
    # 2. Run EasyOCR on the full-resolution grayscale frame!
    results = reader.readtext(gray_frame)
    
    # 3. Create lists for our words and our math
    words = []
    confidences = []
    
    for (bbox, text, prob) in results:
        # INCREASED THRESHOLD: Now it must be at least 50% confident to avoid gibberish
        if prob > 0.5:  
            words.append(text)
            confidences.append(prob)
            
    # 4. Glue the words together and calculate average confidence
    full_sentence = " ".join(words)
    
    avg_confidence = 0
    if len(confidences) > 0:
        # Calculate average and convert to a clean percentage
        avg_confidence = sum(confidences) / len(confidences)
        avg_confidence = round(float(avg_confidence) * 100, 2)
        
       # ADDED: This prints the scanned text directly into your terminal/batch window!
        print("\n" + "="*40)
        print(f"📄 NEW SCAN RECEIVED")
        print(f"TEXT: {full_sentence}")
        print(f"CONFIDENCE: {avg_confidence}%")
        print("="*40 + "\n")
            
    # 5. Send both the sentence AND the average confidence back
    return jsonify({
        'status': 'success', 
        'full_text': full_sentence,
        'confidence': avg_confidence
    })

if __name__ == "__main__":
    # ssl_context='adhoc' forces HTTPS so Safari allows camera access
    app.run(host='0.0.0.0', port=5000, ssl_context='adhoc', debug=True)