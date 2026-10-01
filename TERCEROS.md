# Componentes de terceros

Clips Virales incluye o descarga los siguientes programas, librerías, fuentes y modelos. Cada uno conserva su propia licencia, que prevalece sobre la licencia de Clips Virales para ese componente. Los textos completos de las licencias están en la carpeta `licenses/` y en `bin/<programa>/` dentro de la instalación.

## Programas incluidos en el instalador

| Componente | Para qué se usa | Licencia | Código fuente |
|---|---|---|---|
| [FFmpeg](https://ffmpeg.org) (compilación de [BtbN/FFmpeg-Builds](https://github.com/BtbN/FFmpeg-Builds)) | Leer y cortar video, audio y subtítulos | GPL (versión de la compilación "gpl"; ver `bin/ffmpeg/LICENSE.txt`) | El commit exacto está en `bin/ffmpeg/SOURCE.txt`. Una copia del código fuente se publica junto a cada versión en la página de descargas. |
| [whisper.cpp](https://github.com/ggml-org/whisper.cpp) | Transcribir el audio | MIT | En su repositorio |
| [llama.cpp](https://github.com/ggml-org/llama.cpp) | Ejecutar el modelo de IA local | MIT | En su repositorio |
| [Python](https://www.python.org) 3.12 | Lenguaje de la app | PSF License | En su sitio |
| [PyInstaller](https://pyinstaller.org) (cargador) | Empaquetar la app | GPL 2.0 con excepción para el cargador, que permite distribuir programas de cualquier licencia | En su repositorio |
| Librerías de Python: numpy, onnxruntime, soundfile (y libsndfile), pywebview y sus dependencias | Cálculo, detector de sonidos y caras, audio, ventana | BSD, MIT, Apache 2.0, LGPL 2.1 (libsndfile, como librería dinámica reemplazable) y otras | Lista completa con versión y licencia en `licenses/INDEX.md` |
| Fuente [Poppins](https://github.com/itfoundry/Poppins) ExtraBold | Subtítulos | SIL Open Font License 1.1 | `fonts/OFL.txt` |

## Modelos de IA que descarga el usuario

No van dentro del instalador: el asistente los descarga desde su fuente original la primera vez.

| Modelo | Para qué se usa | Licencia | Origen |
|---|---|---|---|
| Whisper large-v3-turbo (formato ggml) | Transcripción | MIT | [ggerganov/whisper.cpp](https://huggingface.co/ggerganov/whisper.cpp) |
| Silero VAD | Saltar silencios | MIT | [ggml-org/whisper-vad](https://huggingface.co/ggml-org/whisper-vad) |
| YAMNet (formato ONNX) | Detectar risas, gritos y música | Apache 2.0 | [audiomagic/yamnet-onnx](https://huggingface.co/audiomagic/yamnet-onnx) |
| UltraFace RFB-320 | Encontrar caras | MIT | [Linzaer/Ultra-Light-Fast-Generic-Face-Detector-1MB](https://github.com/Linzaer/Ultra-Light-Fast-Generic-Face-Detector-1MB) |
| Qwen3 4B / 8B / 30B-A3B (formato GGUF) | Puntuar clips y sugerir títulos | Apache 2.0 | [unsloth en Hugging Face](https://huggingface.co/unsloth) |

## Conexiones a internet

La app se conecta a internet solo para descargar esos modelos (Hugging Face y GitHub reciben la dirección IP del equipo, como en cualquier descarga). Los videos, el audio, las transcripciones y el chat nunca salen del equipo. No hay analítica ni telemetría.
