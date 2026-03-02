@echo off
cls
echo ==========================================
echo Manual Package Installation
echo ==========================================
echo.

cd /d "%~dp0"

echo Installing Python packages...
echo This may take 3-5 minutes
echo.

python -m pip install --upgrade pip
pip install streamlit
pip install yfinance
pip install pandas
pip install plotly
pip install google-generativeai
pip install FinMind

if %errorlevel% equ 0 (
    echo.
    echo ==========================================
    echo Installation Successful!
    echo ==========================================
    echo.
    echo You can now run START.bat to launch the system
    echo installed > installed.flag
) else (
    echo.
    echo ==========================================
    echo Installation Failed
    echo ==========================================
    echo.
    echo Please check your internet connection
)

echo.
pause
