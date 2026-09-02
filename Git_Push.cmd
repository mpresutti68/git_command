@echo off
echo Preparazione dell'ambiente...

call menu.cmd

if "%DIR_SELEZIONATA%"=="" (
    echo Errore: Nessun percorso selezionato.
    pause
    exit /b
)

echo.
echo Entrando nella cartella: %DIR_SELEZIONATA%
cd /d "%DIR_SELEZIONATA%"

git push

TIMEOUT /T 10