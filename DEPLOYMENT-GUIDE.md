# Deployment Guide - Handling Large Video File 🎥

## The Problem
GitHub has a 25MB file size limit. Your `veer video.mp4` is too large to upload directly.

## Solutions (Choose One)

---

## ✅ Solution 1: Git LFS (Recommended for GitHub)

Git Large File Storage (LFS) allows you to store large files in GitHub.

### Setup Steps:

1. **Install Git LFS** (one-time setup)
   - Download from: https://git-lfs.github.com/
   - Or install via command:
     ```bash
     # Windows (with Chocolatey)
     choco install git-lfs
     
     # Mac
     brew install git-lfs
     
     # Linux
     sudo apt-get install git-lfs
     ```

2. **Initialize Git LFS in your repository**
   ```bash
   cd C:\Users\swaminj\Desktop\Projects\veerar
   git lfs install
   ```

3. **Track the video file**
   ```bash
   git lfs track "*.mp4"
   ```
   This creates a `.gitattributes` file

4. **Commit and push**
   ```bash
   git add .gitattributes
   git add "veer video.mp4"
   git commit -m "Add video using Git LFS"
   git push
   ```

**Note:** GitHub provides 1GB of free LFS storage and 1GB/month bandwidth.

---

## ✅ Solution 2: Host Video Externally (Simplest)

Upload your video to a free hosting service and link to it.

### Option A: Google Drive
1. Upload `veer video.mp4` to Google Drive
2. Right-click → Share → Get link
3. Set permissions to "Anyone with the link"
4. Copy the link (e.g., `https://drive.google.com/file/d/FILE_ID/view`)
5. Convert to direct link format:
   ```
   https://drive.google.com/uc?export=download&id=FILE_ID
   ```
6. Update `index.html`:
   ```html
   <source src="https://drive.google.com/uc?export=download&id=YOUR_FILE_ID" type="video/mp4">
   ```

### Option B: Cloudinary (Free CDN)
1. Sign up at: https://cloudinary.com/ (free tier)
2. Upload your video
3. Get the public URL
4. Update `index.html`:
   ```html
   <source src="YOUR_CLOUDINARY_URL" type="video/mp4">
   ```

### Option C: YouTube (Most Reliable)
1. Upload video to YouTube (can be unlisted)
2. Use YouTube embed instead of direct video
3. Update the video section in `index.html`

---

## ✅ Solution 3: Make Video Optional (Quick Fix)

Simply don't include the video in GitHub. Users can add their own locally.

### Steps:
1. Keep `.gitignore` as is (video file already ignored)
2. Commit everything except the video
3. Add note in README about video being optional
4. Update `index.html` to handle missing video gracefully

**I've already created `.gitignore` for you - the video won't be uploaded.**

---

## ✅ Solution 4: Create Version Without Video

Create a lightweight GitHub version without video functionality.

### Quick Implementation:
```bash
# Remove video button from controls
# Update index.html to hide video overlay
```

---

## 📊 Comparison Table

| Solution | Pros | Cons | Best For |
|----------|------|------|----------|
| **Git LFS** | Native GitHub, version control | Requires setup, bandwidth limits | Teams, version control |
| **External Hosting** | Simple, no size limits | Depends on external service | Quick deployment |
| **Optional Video** | No setup needed | Users must provide own video | Development/testing |
| **No Video Version** | Smallest repo size | Loses video feature | Lightweight demos |

---

## 🎯 Recommended Approach

For your case, I recommend **Solution 2 (External Hosting)** or **Solution 3 (Optional Video)**.

### Why External Hosting?
- ✅ No Git LFS setup required
- ✅ Works immediately on GitHub Pages
- ✅ No file size concerns
- ✅ Easy to update video without re-deploying

### Quick Start with External Hosting:

1. **Upload video to Google Drive** (simplest)
2. **Get shareable link**
3. **Update one line in index.html**
4. **Deploy to GitHub Pages** - Done! 🎉

---

## 🚀 Deployment Without Video (Fastest)

Since the video is already in `.gitignore`, you can deploy NOW:

```bash
cd C:\Users\swaminj\Desktop\Projects\veerar

# Initialize git (if not already)
git init

# Add files (video will be ignored)
git add .

# Commit
git commit -m "Initial commit - AR Airplane Experience"

# Create GitHub repo and push
git remote add origin https://github.com/yourusername/your-repo.git
git branch -M main
git push -u origin main
```

The app will work perfectly - the Video button just won't play anything (which is fine for AR demos).

---

## 💡 Pro Tips

1. **Compress Video First**
   - Use HandBrake or FFmpeg to reduce file size
   - Target: Under 20MB
   - Command: `ffmpeg -i "veer video.mp4" -vcodec h264 -acodec mp3 -vf scale=1280:-1 -crf 28 output.mp4`

2. **Host Video Separately**
   - Use a CDN for better performance
   - Videos load faster from optimized servers

3. **Make Video Optional**
   - Not all users need the video
   - AR experience works great without it

---

## Need Help?

- Git LFS Guide: https://git-lfs.github.com/
- GitHub Pages: https://pages.github.com/
- Video Hosting: https://cloudinary.com/

---

**Choose your solution and deploy! The AR experience is ready to go! 🛩️✨**
