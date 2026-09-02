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

set /p TAG_NAME="Inserisci il nome del tag (es. v2.0.4): "

:: Esegue il comando git usando la variabile appena creata
git tag -a %TAG_NAME% -m "Rilascio vers. %TAG_NAME%"

echo Tag %TAG_NAME% creato con successo!


git push origin --tags

pause