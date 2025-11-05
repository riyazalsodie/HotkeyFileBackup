@echo off
echo ========================================
echo Building Hotkey File Backup Executable
echo ========================================
echo.

REM Check if PyInstaller is installed
python -c "import PyInstaller" 2>nul
if errorlevel 1 (
    echo PyInstaller not found. Installing...
    pip install pyinstaller
    echo.
)

REM Check if Pillow is installed (needed for PNG icon conversion)
python -c "import PIL" 2>nul
if errorlevel 1 (
    echo Pillow not found. Installing for icon conversion...
    pip install Pillow
    echo.
)

REM Clean previous builds
echo Cleaning previous builds...
if exist build rmdir /s /q build
if exist dist rmdir /s /q dist
echo.

REM Build the executable
echo Building executable...
echo This may take a few minutes...
pyinstaller --clean --log-level=INFO build_exe.spec
echo.

if exist dist\HotkeyFileBackup.exe (
    echo ========================================
    echo Build successful!
    echo ========================================
    echo.
    echo Executable location: dist\HotkeyFileBackup.exe
    echo.
    echo You can now run: dist\HotkeyFileBackup.exe
    echo.
) else (
    echo ========================================
    echo Build failed!
    echo ========================================
    echo Please check the error messages above.
)

pause
