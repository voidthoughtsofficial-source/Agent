# How to Run Your Website Locally

## The Problem
You're seeing CORS errors because JavaScript modules (ES6 imports) don't work when opening HTML files directly in the browser (file:// protocol). You need a local web server.

## Quick Solutions

### Option 1: VS Code Live Server (Easiest - Recommended)

1. **Install Live Server Extension:**
   - Open VS Code
   - Go to Extensions (Ctrl+Shift+X)
   - Search for "Live Server" by Ritwick Dey
   - Click Install

2. **Run the Server:**
   - Right-click on `index.html` in VS Code
   - Select "Open with Live Server"
   - Your site will open at `http://127.0.0.1:5500` (or similar)

3. **That's it!** The server will auto-reload when you save files.

---

### Option 2: Python (If you have Python installed)

**Python 3:**
```bash
python -m http.server 8000
```

**Python 2:**
```bash
python -m SimpleHTTPServer 8000
```

Then open: `http://localhost:8000`

---

### Option 3: Node.js (If you have Node.js installed)

**Using http-server:**
```bash
npx http-server -p 8000
```

Then open: `http://localhost:8000`

**Or install globally:**
```bash
npm install -g http-server
http-server -p 8000
```

---

### Option 4: PHP (If you have PHP installed)

```bash
php -S localhost:8000
```

Then open: `http://localhost:8000`

---

## After Starting Server

1. Open `http://localhost:8000` (or the port shown)
2. Navigate to `index.html`
3. All features should work now!

## Other Issues Fixed

- **Tailwind Warning**: This is just a warning, not an error. The site will work fine. For production, you can remove the Tailwind CDN script tag if you're not using it.

- **Favicon Error**: The favicon file doesn't exist. This won't break anything, but you can create one or remove the favicon link from HTML.

---

## Quick Fix Script

I'll create a simple batch file to start a server automatically (Windows).

