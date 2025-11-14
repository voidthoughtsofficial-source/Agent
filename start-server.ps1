# PowerShell Script to Start Local Server

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Portfolio Website - Local Server" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check what's available
$pythonAvailable = $false
$nodeAvailable = $false
$phpAvailable = $false

try {
    python --version | Out-Null
    $pythonAvailable = $true
} catch {}

try {
    node --version | Out-Null
    $nodeAvailable = $true
} catch {}

try {
    php --version | Out-Null
    $phpAvailable = $true
} catch {}

Write-Host "Available servers:" -ForegroundColor Yellow
if ($pythonAvailable) { Write-Host "  [1] Python" -ForegroundColor Green }
if ($nodeAvailable) { Write-Host "  [2] Node.js" -ForegroundColor Green }
if ($phpAvailable) { Write-Host "  [3] PHP" -ForegroundColor Green }
Write-Host "  [4] Exit" -ForegroundColor Red
Write-Host ""

$choice = Read-Host "Enter your choice"

if ($choice -eq "1" -and $pythonAvailable) {
    Write-Host ""
    Write-Host "Starting Python server..." -ForegroundColor Green
    Write-Host "Open your browser at: http://localhost:8000" -ForegroundColor Cyan
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
    Write-Host ""
    python -m http.server 8000
}
elseif ($choice -eq "2" -and $nodeAvailable) {
    Write-Host ""
    Write-Host "Starting Node.js server..." -ForegroundColor Green
    Write-Host "Open your browser at: http://localhost:8000" -ForegroundColor Cyan
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
    Write-Host ""
    npx http-server -p 8000
}
elseif ($choice -eq "3" -and $phpAvailable) {
    Write-Host ""
    Write-Host "Starting PHP server..." -ForegroundColor Green
    Write-Host "Open your browser at: http://localhost:8000" -ForegroundColor Cyan
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
    Write-Host ""
    php -S localhost:8000
}
elseif ($choice -eq "4") {
    Write-Host "Exiting..." -ForegroundColor Yellow
    exit
}
else {
    Write-Host ""
    Write-Host "Invalid choice or server not available." -ForegroundColor Red
    Write-Host ""
    Write-Host "Recommendation: Install VS Code and use Live Server extension:" -ForegroundColor Yellow
    Write-Host "  1. Install VS Code" -ForegroundColor White
    Write-Host "  2. Install 'Live Server' extension" -ForegroundColor White
    Write-Host "  3. Right-click index.html > Open with Live Server" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter to exit"
}

