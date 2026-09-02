
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

@echo off
setlocal

:: Chiede all'utente di inserire il commento
set /p messaggio="Inserisci il messaggio di commit: "

:: Controlla se la variabile è vuota
if "%messaggio%"=="" (
    echo Errore: il messaggio di commit non puo' essere vuoto. Operazione annullata.
    exit /b 1
)

:: Esegue il commit con il messaggio inserito
git commit -m "%messaggio%"


TIMEOUT /T 10

endlocal
