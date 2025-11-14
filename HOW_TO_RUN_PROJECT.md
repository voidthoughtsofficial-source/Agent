# 🚀 How to Run Your Project

## Quick Start (Easiest Method)

### Option 1: Just Run the Website (Recommended for First Time)

1. **Double-click `start-server.bat`** in your project folder
2. Choose option **1** (Python) or **2** (Node.js)
3. Open your browser and go to: **http://localhost:8000**
4. **That's it!** Your website is running! 🎉

---

## Option 2: Run Website + Traffic Tracker

If you want to track visitor data locally:

### Step 1: Start Traffic Server (Terminal 1)

**Option A: Double-click**
- Double-click `TRAFFIC/start-traffic-server.bat`

**Option B: Command Line**
```bash
cd TRAFFIC
node server.js
```

✅ Server will start on port **3001** - Keep this running!

### Step 2: Start Website Server (Terminal 2)

**Option A: Double-click**
- Double-click `start-server.bat` in the main folder
- Choose option 1 (Python) or 2 (Node.js)

**Option B: Command Line**
```bash
# Python
python -m http.server 8000

# OR Node.js
npx http-server -p 8000
```

✅ Server will start on port **8000**

### Step 3: Open Your Website

1. Open browser: **http://localhost:8000**
2. View traffic dashboard: **http://localhost:8000/TRAFFIC/dashboard.html**

---

## Option 3: VS Code Live Server (Easiest)

### Step 1: Install VS Code
- Download from: https://code.visualstudio.com/

### Step 2: Install Live Server Extension
1. Open VS Code
2. Press `Ctrl+Shift+X`
3. Search: **"Live Server"** by Ritwick Dey
4. Click **Install**

### Step 3: Run
1. Open your project folder in VS Code
2. Right-click on `index.html`
3. Select **"Open with Live Server"**
4. Browser opens automatically! ✅

**Note**: Traffic tracking won't work with Live Server (it uses a different port). Use Option 2 for traffic tracking.

---

## 📋 What You Need

### For Website Only:
- ✅ Python **OR** Node.js (either one works)
- ✅ A web browser

### For Traffic Tracking:
- ✅ Node.js (required for traffic server)
- ✅ Python **OR** Node.js (for website server)
- ✅ A web browser

---

## 🎯 Quick Commands

### Start Website Server:
```bash
# Python
python -m http.server 8000

# Node.js
npx http-server -p 8000
```

### Start Traffic Server:
```bash
cd TRAFFIC
node server.js
```

### Open in Browser:
- Website: http://localhost:8000
- Dashboard: http://localhost:8000/TRAFFIC/dashboard.html

---

## ✅ Verify It's Working

### Check Website:
1. Open: http://localhost:8000
2. You should see your portfolio website
3. Try clicking navigation links
4. Check browser console (F12) - should be no errors

### Check Traffic Tracking (if enabled):
1. Open: http://localhost:8000/TRAFFIC/dashboard.html
2. Browse your website (visit different pages)
3. Refresh dashboard - you should see page views

---

## 🐛 Troubleshooting

### "Port already in use"
- Another server is running on that port
- Stop the other server or change the port

### "Python not found" or "Node not found"
- Install Python from: https://www.python.org/
- Install Node.js from: https://nodejs.org/

### "Cannot GET /" or 404 errors
- Make sure you're running the server from the project root folder
- Check that `index.html` exists in the folder

### Traffic tracker not working
- Make sure traffic server is running (port 3001)
- Make sure website server is running (port 8000)
- Check browser console (F12) for errors
- Verify you're using `http://localhost:8000` (not `file://`)

### CORS errors
- Make sure you're using `http://localhost` (not `file://`)
- Don't double-click HTML files - use a server!

---

## 📝 Summary

**Easiest Way:**
1. Double-click `start-server.bat`
2. Choose Python or Node.js
3. Open http://localhost:8000

**With Traffic Tracking:**
1. Double-click `TRAFFIC/start-traffic-server.bat` (Terminal 1)
2. Double-click `start-server.bat` (Terminal 2)
3. Open http://localhost:8000

**That's it!** Your website is now running! 🎉

---

## 🌐 Your Live Site

Your website is also live on Netlify:
- **URL**: https://dazzling-bublanina-a4c2ff.netlify.app/
- **Status**: ✅ Deployed and working
- **Note**: Traffic tracking is disabled on production (no errors)

---

**Need Help?** Check the browser console (F12) for error messages.

