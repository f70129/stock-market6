@echo off
chcp 65001 >nul 2>&1
cls
echo ==========================================
echo   系統診斷工具
echo ==========================================
echo.

cd /d "%~dp0"

echo [測試 1] 檢查當前目錄
echo 當前目錄: %CD%
echo.

echo [測試 2] 檢查檔案是否存在
if exist "main.py" (
    echo ✓ main.py 存在
) else (
    echo ✗ main.py 不存在
)

if exist "data_loader.py" (
    echo ✓ data_loader.py 存在
) else (
    echo ✗ data_loader.py 不存在
)

if exist "chart_plotter.py" (
    echo ✓ chart_plotter.py 存在
) else (
    echo ✗ chart_plotter.py 不存在
)

if exist "ai_engine.py" (
    echo ✓ ai_engine.py 存在
) else (
    echo ✗ ai_engine.py 不存在
)

if exist "requirements.txt" (
    echo ✓ requirements.txt 存在
) else (
    echo ✗ requirements.txt 不存在
)

echo.
echo [測試 3] 檢查 Python 環境
python --version 2>nul
if %errorlevel% equ 0 (
    echo ✓ Python 已安裝
) else (
    echo ✗ Python 未安裝或未加入 PATH
    echo.
    echo 請至 https://www.python.org/downloads/ 下載安裝
    echo 安裝時務必勾選「Add Python to PATH」
)

echo.
echo [測試 4] 檢查 pip 環境
python -m pip --version 2>nul
if %errorlevel% equ 0 (
    echo ✓ pip 已安裝
) else (
    echo ✗ pip 未安裝
)

echo.
echo [測試 5] 檢查 streamlit 是否已安裝
python -c "import streamlit" 2>nul
if %errorlevel% equ 0 (
    echo ✓ streamlit 已安裝
) else (
    echo ✗ streamlit 未安裝
    echo.
    echo 執行以下指令安裝:
    echo pip install streamlit
)

echo.
echo ==========================================
echo   診斷完成
echo ==========================================
echo.
echo 如果所有項目都是 ✓，代表環境正常
echo 如果有 ✗，請依照提示處理
echo.

pause
