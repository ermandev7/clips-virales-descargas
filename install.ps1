# Instala Clips Virales en Windows: descarga el instalador y lo abre.
$ErrorActionPreference = "Stop"
$url = "https://github.com/ermandev7/clips-virales-descargas/releases/latest/download/ClipsVirales-windows-setup.exe"
$dest = Join-Path $env:TEMP "ClipsVirales-setup.exe"
Write-Host "Descargando Clips Virales..."
Invoke-WebRequest -Uri $url -OutFile $dest -UseBasicParsing
Write-Host "Abriendo el instalador..."
Start-Process -FilePath $dest -Wait
