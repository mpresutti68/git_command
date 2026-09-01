@echo off

:: Chiede all'utente di inserire il nome del tag e lo salva nella variabile TAG_NAME
set /p TAG_NAME="Inserisci il nome del tag (es. v2.0.4): "

:: Esegue il comando git usando la variabile appena creata
cd C:\Progetti\EnhancedCourseManagement
git tag -a %TAG_NAME% -m "Rilascio vers. %TAG_NAME%"

echo Tag %TAG_NAME% creato con successo!


git push origin --tags

pause