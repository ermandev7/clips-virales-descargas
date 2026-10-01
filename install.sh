#!/bin/sh
# Instala Clips Virales en Linux (AppImage) para el usuario actual.
set -e
URL="https://github.com/ermandev7/clips-virales-descargas/releases/latest/download/ClipsVirales-linux-x86_64.AppImage"
mkdir -p "$HOME/.local/bin" "$HOME/.local/share/applications"
echo "Descargando Clips Virales..."
curl -fL --progress-bar -o "$HOME/.local/bin/ClipsVirales.AppImage" "$URL"
chmod +x "$HOME/.local/bin/ClipsVirales.AppImage"
cat > "$HOME/.local/share/applications/clipsvirales.desktop" <<DESK
[Desktop Entry]
Type=Application
Name=Clips Virales
Exec=$HOME/.local/bin/ClipsVirales.AppImage
Categories=AudioVideo;Video;
Terminal=false
DESK
echo "Listo. Abre 'Clips Virales' desde el menú de aplicaciones o ejecuta: $HOME/.local/bin/ClipsVirales.AppImage"
