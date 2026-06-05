param(
    [string]$SourceDir = "$PSScriptRoot\BootstrapperNet48",
    [string]$FdExe = "C:\LVASI\LVASI-fd\LVASI.exe",
    [string]$OutputDir = "$PSScriptRoot\..\..\..\LVASI-portable"
)

$csc = "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\csc.exe"

Write-Host "Compiling bootstrapper stub..." -ForegroundColor Cyan
& $csc /target:winexe /reference:"System.Windows.Forms.dll" /reference:"System.dll" /reference:"System.Net.dll" /reference:"System.Security.dll" /out:"$env:TEMP\LVASI_Stub.exe" "$SourceDir\bootstrapper.cs" 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed!" -ForegroundColor Red
    exit 1
}

$stubSize = (Get-Item "$env:TEMP\LVASI_Stub.exe").Length
Write-Host "Stub compiled: $([math]::Round($stubSize/1KB, 1)) KB" -ForegroundColor Green

Write-Host "Appending LVASI.exe ($((Get-Item $FdExe).Length / 1MB) MB)..." -ForegroundColor Cyan

# Read both files
$stub = [System.IO.File]::ReadAllBytes("$env:TEMP\LVASI_Stub.exe")
$appData = [System.IO.File]::ReadAllBytes($FdExe)

# Create output: stub + app data + 8 bytes size
$output = New-Object byte[] ($stub.Length + $appData.Length + 8)
[Buffer]::BlockCopy($stub, 0, $output, 0, $stub.Length)
[Buffer]::BlockCopy($appData, 0, $output, $stub.Length, $appData.Length)

# Write size as last 8 bytes
$sizeBytes = [BitConverter]::GetBytes([long]$appData.Length)
[Buffer]::BlockCopy($sizeBytes, 0, $output, $output.Length - 8, 8)

if (!(Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null }
$finalPath = Join-Path $OutputDir "LVASI.exe"
[System.IO.File]::WriteAllBytes($finalPath, $output)

$finalSize = (Get-Item $finalPath).Length
Write-Host "Done! Final exe: $([math]::Round($finalSize/1MB, 1)) MB at $finalPath" -ForegroundColor Green
