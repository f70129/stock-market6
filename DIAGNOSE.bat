@echo off
cls
echo ==========================================
echo System Diagnostic Tool
echo ==========================================
echo.

cd /d "%~dp0"

echo [Test 1] Current Directory
echo Location: %CD%
echo.

echo [Test 2] Checking Files
if exist "main.py" (echo OK - main.py found) else (echo ERROR - main.py NOT found)
if exist "data_loader.py" (echo OK - data_loader.py found) else (echo ERROR - data_loader.py NOT found)
if exist "chart_plotter.py" (echo OK - chart_plotter.py found) else (echo ERROR - chart_plotter.py NOT found)
if exist "ai_engine.py" (echo OK - ai_engine.py found) else (echo ERROR - ai_engine.py NOT found)
if exist "requirements.txt" (echo OK - requirements.txt found) else (echo ERROR - requirements.txt NOT found)
echo.

echo [Test 3] Checking Python
python --version 2>nul
if %errorlevel% equ 0 (
    echo OK - Python installed
) else (
    echo ERROR - Python NOT installed or not in PATH
    echo Please install from https://www.python.org/downloads/
)
echo.

echo [Test 4] Checking pip
python -m pip --version 2>nul
if %errorlevel% equ 0 (
    echo OK - pip installed
) else (
    echo ERROR - pip NOT installed
)
echo.

echo [Test 5] Checking streamlit
python -c "import streamlit" 2>nul
if %errorlevel% equ 0 (
    echo OK - streamlit installed
) else (
    echo ERROR - streamlit NOT installed
    echo Run: pip install streamlit
)
echo.

echo ==========================================
echo Diagnostic Complete
echo ==========================================
echo.
echo If all tests show OK, your system is ready
echo If any test shows ERROR, please fix it first
echo.

pause
