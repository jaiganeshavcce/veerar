# AR Airplane Experience 🛩️

An interactive Augmented Reality (AR) web application that allows users to view and interact with a 3D airplane model using their device's camera.

## Features ✨

- **3D Airplane Model** - Interactive 3D model with realistic rendering
- **AR Mode** - View the airplane in your real-world space using your camera
- **Animation Control** - Toggle airplane flight animation
- **Video Playback** - Watch a video with audio overlay
- **Camera Controls** - Rotate, zoom, and pan around the model
- **Auto-Rotation** - Model automatically rotates when idle
- **Mobile Optimized** - Fully responsive design for smartphones and tablets

## Live Demo 🚀

**⚠️ IMPORTANT:** Due to browser security restrictions, you must run this application through a web server. Opening `index.html` directly from your file system will cause model loading errors.

### Option 1: Quick Local Server (Recommended for Testing)

**Double-click `start-server.bat`** on Windows, then open: `http://localhost:8000`

This script automatically detects and uses Python or Node.js to start a local server.

### Option 2: GitHub Pages (Recommended for Sharing)

1. Upload all files to your repository
2. Enable GitHub Pages in repository settings
3. Access via: `https://yourusername.github.io/repository-name/`

## Requirements 📱

### For Basic 3D Viewing:
- Any modern web browser (Chrome, Safari, Firefox, Edge)
- Desktop or mobile device

### For AR Mode:
- **Android**: Device with ARCore support
  - Chrome browser (recommended)
  - Android 7.0 or higher
- **iOS**: Device with ARKit support
  - Safari browser
  - iOS 12 or higher

## File Structure 📂

```
veerar/
├── index.html           # Main AR application
├── plane_glb.glb        # 3D airplane model
├── veer video.mp4       # Video content with audio
├── start-server.bat     # Quick server launcher (Windows)
└── README.md            # This file
```

## How to Use 🎮

### Desktop Browser:
1. Open `index.html` in your browser
2. Use mouse to rotate and zoom the airplane
3. Click **Fly** to toggle animation
4. Click **Video** to watch the airplane video
5. Click **Reset** to return to default view

### Mobile Device (AR Mode):
1. Open `index.html` in Chrome (Android) or Safari (iOS)
2. View the 3D model and interact using touch gestures
3. Tap **View in AR** button at the bottom
4. Allow camera permissions when prompted
5. Point your camera at a flat surface (floor/table)
6. The airplane will appear in your real-world space!
7. Walk around to view from different angles

### Controls:

| Button | Function |
|--------|----------|
| **Fly** | Start/stop airplane animation |
| **Video** | Play video with audio overlay |
| **Reset** | Reset camera to default position |
| **View in AR** | Activate AR mode (mobile only) |

## Hosting on GitHub 🌐

### Method 1: GitHub Pages (Recommended)

1. Create a new GitHub repository
2. Upload all files:
   - `index.html`
   - `plane_glb.glb`
   - `veer video.mp4`
   - `README.md`

3. Go to repository **Settings** → **Pages**
4. Under "Source", select **main** branch
5. Click **Save**
6. Your site will be live at: `https://yourusername.github.io/repository-name/`

### Method 2: Test Locally with Web Server

**Windows Users:**
```bash
# Navigate to the folder
cd C:\Users\swaminj\Desktop\Projects\veerar

# Double-click start-server.bat OR run:
start-server.bat

# Open browser to: http://localhost:8000
```

**Mac/Linux Users (Python):**
```bash
# Navigate to the folder
cd veerar

# Start Python server
python3 -m http.server 8000

# Open browser to: http://localhost:8000
```

**Alternative (Node.js):**
```bash
# Install http-server globally (one-time)
npm install -g http-server

# Navigate to folder and start server
cd veerar
http-server -p 8000

# Open browser to: http://localhost:8000
```

## Technology Stack 🛠️

- **Model Viewer 3.4.0** - Google's web component for 3D/AR
- **WebXR** - AR functionality
- **HTML5/CSS3** - Structure and styling
- **Vanilla JavaScript** - Interactivity and controls

## Browser Compatibility 🌍

| Browser | Desktop | Mobile | AR Support |
|---------|---------|--------|------------|
| Chrome | ✅ | ✅ | ✅ (Android) |
| Safari | ✅ | ✅ | ✅ (iOS) |
| Firefox | ✅ | ✅ | ⚠️ Limited |
| Edge | ✅ | ✅ | ⚠️ Limited |

## Troubleshooting 🔧

### AR Mode Not Working?

**Android:**
- Ensure you have Google Play Services for AR installed
- Use Chrome browser (not other browsers)
- Update Chrome to the latest version
- Check if your device supports ARCore: [ARCore Devices](https://developers.google.com/ar/devices)

**iOS:**
- Use Safari browser (not other browsers)
- Ensure iOS 12 or higher
- Check if your device supports ARKit (iPhone 6S and newer)

### Video Not Playing?

- Ensure `veer video.mp4` is in the same folder as `index.html`
- Check browser console for errors (F12)
- Try a different video format (MP4 is most compatible)

### 3D Model Not Loading?

**Most Common Issue:** Opening HTML file directly (file:// protocol)
- ✅ **SOLUTION:** Use a web server (see "Live Demo" section above)
- Double-click `start-server.bat` on Windows
- Or upload to GitHub Pages

**Other Checks:**
- Verify `plane_glb.glb` is in the same folder as `index.html`
- Check file name spelling and case sensitivity
- Ensure the GLB file is not corrupted
- Check browser console for error messages (F12)
- Try a different browser (Chrome or Safari recommended)

## Customization 🎨

### Change Colors:
Edit the CSS gradient in `index.html`:
```css
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
```

### Adjust Model Size:
Modify camera orbit parameters:
```html
camera-orbit="45deg 75deg 8m"
min-camera-orbit="auto auto 3m"
max-camera-orbit="auto auto 15m"
```

### Replace Model:
- Replace `plane_glb.glb` with your own GLB file
- Update the `src` attribute in `index.html`

## Performance Tips ⚡

- Keep GLB file size under 10MB for faster loading
- Compress video files for better mobile performance
- Use optimized 3D models with reduced polygon count
- Test on actual devices, not just emulators

## License 📄

This project is open-source and free to use for educational and commercial purposes.

## Support 💬

For issues or questions:
- Check the Troubleshooting section above
- Open an issue on GitHub
- Refer to [Model Viewer Documentation](https://modelviewer.dev/)

## Credits 👏

- Built with [Model Viewer](https://modelviewer.dev/) by Google
- Powered by WebXR and ARCore/ARKit technology

---

**Enjoy your AR Airplane Experience! 🛩️✨**
