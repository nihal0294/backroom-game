@echo off
setlocal
title Download Backrooms Wiki in Markdown

where py >nul 2>nul
if errorlevel 1 (
    echo Python 3 non trovato. Installalo da https://www.python.org/downloads/
    echo Durante l'installazione seleziona "Add Python to PATH".
    pause
    exit /b 1
)

echo Installazione o aggiornamento delle dipendenze necessarie...
py -m pip install --disable-pip-version-check requests beautifulsoup4 markdownify
if errorlevel 1 (
    echo Installazione delle dipendenze fallita.
    pause
    exit /b 1
)

echo.
echo Avvio del download completo. I file saranno salvati accanto a questo script.
echo Per includere anche le immagini, avvia da PowerShell con: .\scarica_backrooms_wiki.cmd --images
echo.
py "%~dp0download_backrooms_wiki.py" --output "%~dp0backrooms-wiki-md" %*

echo.
if errorlevel 1 (
    echo Completato con alcuni errori. Rilancia questo file per riprovare solo quelli mancanti.
) else (
    echo Download completato.
)
pause
