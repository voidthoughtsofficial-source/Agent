# IMPORTANT: You MUST use a local server!

## The Problem
Opening `index.html` directly in your browser (double-clicking it) uses the `file://` protocol, which doesn't support ES6 modules. You'll always get CORS errors.

## ✅ SOLUTION: Use VS Code Live Server (Easiest)

### Step 1: Install Live Server Extension
1. Open VS Code
2. Press `Ctrl+Shift+X` to open Extensions
3. Search for: **"Live Server"** by **Ritwick Dey**
4. Click the **Install** button

### Step 2: Start the Server
1. In VS Code, right-click on `index.html`
2. Select **"Open with Live Server"**
3. Your browser will open automatically at `http://127.0.0.1:5500` (or similar port)

### Step 3: Done!
- ✅ No more CORS errors
- ✅ Tabs will work
- ✅ Portfolio will load
- ✅ Everything will function properly

---

## Alternative: Python Server (If you have Python)

1. Open PowerShell in your project folder (`C:\VoidEchoGame`)
2. Run this command:
```powershell
python -m http.server 8000
```
3. Open browser and go to: `http://localhost:8000`

---

## Alternative: Node.js Server (If you have Node.js)

1. Open PowerShell in your project folder
2. Run this command:
```powershell
npx http-server -p 8000
```
3. Open browser and go to: `http://localhost:8000`

---

## ⚠️ DO NOT:
- ❌ Double-click `index.html` to open it
- ❌ Drag `index.html` into browser
- ❌ Use `file://` protocol

## ✅ DO:
- ✅ Use Live Server extension (recommended)
- ✅ Use Python/Node.js server
- ✅ Always use `http://localhost` or `http://127.0.0.1`

---

## Quick Check:
After starting a server, the URL in your browser should start with:
- ✅ `http://localhost:...` or `http://127.0.0.1:...`
- ❌ NOT `file:///C:/...`

If you see `file://`, you're not using a server!

