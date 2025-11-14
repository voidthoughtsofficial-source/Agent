# 🚀 QUICK START GUIDE

## ⚠️ IMPORTANT: You MUST Use a Local Server!

**DO NOT** double-click `index.html` - it won't work!

---

## ✅ EASIEST METHOD: VS Code Live Server

### Step 1: Install VS Code
- Download from: https://code.visualstudio.com/
- Install it

### Step 2: Install Live Server Extension
1. Open VS Code
2. Press `Ctrl+Shift+X` (or click Extensions icon)
3. Search: **"Live Server"**
4. Install the one by **Ritwick Dey** (most popular)

### Step 3: Start Server
1. Open your project folder in VS Code
2. Right-click on `index.html`
3. Click **"Open with Live Server"**
4. Browser opens automatically! ✅

---

## 🐍 ALTERNATIVE: Python Server

If you have Python installed:

1. **Open PowerShell** in this folder (`C:\VoidEchoGame`)
2. **Run this command:**
   ```powershell
   python -m http.server 8000
   ```
3. **Open browser:** http://localhost:8000

---

## 📦 ALTERNATIVE: Node.js Server

If you have Node.js installed:

1. **Open PowerShell** in this folder
2. **Run this command:**
   ```powershell
   npx http-server -p 8000
   ```
3. **Open browser:** http://localhost:8000

---

## 🪟 QUICK START: Use Batch File

**Double-click `start-server.bat`** in this folder!

It will automatically detect what you have installed and start a server.

---

## ✅ How to Know It's Working

When you open the site, check the browser address bar:

- ✅ **GOOD:** `http://localhost:8000` or `http://127.0.0.1:5500`
- ❌ **BAD:** `file:///C:/VoidEchoGame/index.html`

If you see `file://`, you're not using a server!

---

## 🐛 Troubleshooting

**Still getting CORS errors?**
- Make sure URL starts with `http://` not `file://`
- Try hard refresh: `Ctrl+F5`
- Check browser console (F12) for errors

**Portfolio not loading?**
- Check browser console (F12)
- Look for "Portfolio initialized" message
- Make sure you're using a server (not file://)

**Tabs not working?**
- Check browser console (F12)
- Look for "Tabs initialized" message
- Make sure JavaScript modules are loading

---

## 📝 Need Help?

1. Open browser console (F12)
2. Check for error messages
3. Make sure you're using a local server
4. See `HOW_TO_RUN.md` for more details
