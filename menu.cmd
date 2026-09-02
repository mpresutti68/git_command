@echo off
echo =========================================
echo        SELEZIONA IL PROGETTO
echo =========================================
echo [1] Enhanced Course Management
echo [2] MakeExtensionLicence
echo [9] git_command
echo =========================================

choice /c 129 /n /m "Premi il numero del progetto: "

:: Imposta la variabile che verra' letta dal file principale
if errorlevel 3 set "DIR_SELEZIONATA=C:\Progetti\git_command"
if errorlevel 2 set "DIR_SELEZIONATA=C:\Progetti\MakeExtensionLicence"
if errorlevel 1 set "DIR_SELEZIONATA=C:\Progetti\EnhancedCourseManagement"

echo %DIR_SELEZIONATA%

:: Fine dello script. Il controllo torna in automatico al file chiamante.

