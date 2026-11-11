@echo off
setlocal
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo Ambiente virtual nao encontrado.
    echo Siga a instalacao no arquivo README_AULA_50.md.
    pause
    exit /b 1
)
".venv\Scripts\python.exe" manage.py runserver 127.0.0.1:8000
set "RESULTADO=%ERRORLEVEL%"
if not "%RESULTADO%"=="0" pause
exit /b %RESULTADO%
