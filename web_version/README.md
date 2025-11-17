# Virtual Piano - Web Version

Play piano on printed paper or in the air using hand tracking in your browser!

## Quick Start

### Option 1: Using Python (Recommended)
```bash
# Windows
run.bat

# Linux/Mac
chmod +x run.sh
./run.sh

# Or manually:
python -m http.server 8000
# Then open http://localhost:8000/app.html in your browser
```

### Option 2: Using Node.js
```bash
npx serve
# Then open the URL shown in your browser
```

### Option 3: Using Live Server (VS Code Extension)
1. Install "Live Server" extension in VS Code
2. Right-click on `app.html` or `index.html`
3. Select "Open with Live Server"

### Option 4: Direct File Open
- Simply open `app.html` or `index.html` in your browser
- Note: Some features may not work due to CORS restrictions

## Files

- **index.html** - Landing page
- **app.html** - Main application (start here!)
- **test.html** - Test page for MediaPipe hand detection
- **about.html** - About page

## Usage

1. Open `app.html` in your browser
2. Allow camera access when prompted
3. Choose mode:
   - **Play in the air**: Uses dummy layout
   - **Play on paper**: Capture and process printed layout
4. Position your hands in front of the camera
5. Touch keys with your fingertips to play!

## Requirements

- Modern browser (Chrome, Firefox, Edge, Safari)
- Webcam or camera access
- Good lighting for hand detection

## Troubleshooting

- **Camera not working**: Check browser permissions
- **Hands not detected**: Improve lighting, adjust detection confidence
- **No sound**: Check browser audio permissions
- **Layout not loading**: Make sure all files are in the same directory

## Features

- 🎹 29 piano keys (C3 to E5)
- 🖐️ Real-time hand tracking
- 📄 Play on printed paper
- ✈️ Play in the air mode
- 🎵 Audio playback
- 📱 Works on desktop browsers

Enjoy playing! 🎹

