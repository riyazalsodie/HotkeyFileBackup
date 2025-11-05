# Hotkey File Backup - Project Description

## Overview

**Hotkey File Backup** is a professional Windows desktop application that provides quick and easy file backup functionality through customizable keyboard shortcuts. Built with Python and PyQt6, it offers a modern, user-friendly interface with both light and dark themes.

## Key Features

### 🎯 Core Functionality
- **Global Hotkey Backup**: Trigger backups from any application using customizable keyboard shortcuts
- **Manual Backup**: Start backups with a single click from the main window
- **Progress Tracking**: Real-time progress display with file count and size information
- **Smart File Handling**: Configurable overwrite policies for existing files
- **Folder Exclusion**: Automatically excludes common folders like `node_modules`, `.git`, `__pycache__`

### 🎨 User Interface
- **Modern Design**: Clean, professional interface with rounded corners
- **Dual Themes**: Light and dark theme support
- **Custom Title Bar**: Frameless window with custom purple gradient title bar
- **System Tray Integration**: Minimize to tray with quick access menu
- **Toast Notifications**: Beautiful sliding notifications with progress bars
- **Responsive Layout**: Adapts to different screen sizes

### ⚙️ Configuration Options
- **Source Folder Selection**: Choose which folder to backup
- **Backup Destination**: Select where backups are stored
- **Hotkey Customization**: Set any key combination (Ctrl, Alt, Shift + Key)
- **Auto-Start**: Launch automatically when Windows starts
- **Overwrite Policies**: Ask, Always, Skip, or Ask Once
- **Notification Settings**: Enable/disable backup notifications

### 📊 Advanced Features
- **Logging System**: Comprehensive logging with rotation (5MB max, 3 backups)
- **Settings Management**: Persistent JSON-based configuration
- **Error Handling**: Graceful error handling with user-friendly messages
- **Thread-Safe Operations**: Background file operations without UI freezing
- **Progress Toast**: Real-time progress updates during silent backups

## Technical Stack

### Technologies Used
- **Python 3.8+**: Core programming language
- **PyQt6**: Modern GUI framework
- **pynput**: Global hotkey detection
- **PyInstaller**: Executable bundling
- **Inno Setup**: Professional Windows installer

### Architecture
- **MVC Pattern**: Separation of concerns with Model-View-Controller
- **Event-Driven**: Signal/slot mechanism for component communication
- **Multi-Threading**: Background workers for file operations
- **Resource Management**: Proper cleanup and memory management

### Project Structure
```
AutoBackup/
├── src/
│   ├── main.py                 # Application entry point
│   ├── app_controller.py       # Main controller
│   ├── core/                   # Core functionality
│   │   ├── config_manager.py   # Configuration handling
│   │   ├── file_manager.py     # File operations
│   │   ├── hotkey_manager.py   # Hotkey detection
│   │   └── logger.py           # Logging system
│   ├── gui/                    # User interface
│   │   ├── main_window.py      # Main window
│   │   ├── custom_title_bar.py # Custom title bar
│   │   ├── toast_notification.py # Toast notifications
│   │   ├── progress_dialog.py  # Progress dialog
│   │   ├── settings_dialog.py  # Settings dialog
│   │   ├── hotkey_input.py     # Hotkey input dialog
│   │   └── styles.py           # Theme styling
│   └── system/                 # System integration
│       ├── tray_manager.py     # System tray
│       ├── autostart.py        # Auto-start functionality
│       └── notifications.py    # Notification manager
├── tests/                      # Unit tests
├── AutoBackup.ico              # Application icon
├── requirements.txt            # Python dependencies
├── build_exe.spec              # PyInstaller configuration
├── build_exe.bat               # Windows build script
└── LICENSE.txt                 # MIT License
```

## Build Process

### 1. Standalone Executable (EXE)

The application is built into a single executable file using PyInstaller:

**Build Command:**
```cmd
build_exe.bat
```

**Output:**
- `dist/HotkeyFileBackup.exe` (~50-100 MB)
- Single file, no dependencies required
- Includes all Python runtime and libraries
- Embedded application icon

**Build Configuration:**
- Single-file mode for easy distribution
- No console window (GUI only)
- UPX compression enabled
- All resources bundled (icon, etc.)
- Hidden imports for PyQt6 and pynput

**Features:**
- ✅ Portable - runs without installation
- ✅ No Python required on target system
- ✅ All dependencies included
- ✅ Works on any Windows 10+ system
- ✅ Can be run from USB drive

### 2. Setup Installer (Setup.exe)

A professional Windows installer created with Inno Setup:

**Installer Features:**
- Professional installation wizard
- License agreement display
- Custom installation directory
- Desktop shortcut creation (optional)
- Start Menu entry creation
- Auto-start configuration (optional)
- Uninstaller included
- Upgrade support (preserves settings)
- Windows 10/11 compatible

**Installation Process:**
1. Welcome screen with application info
2. License agreement (MIT License)
3. Installation directory selection
4. Component selection (shortcuts, auto-start)
5. Installation progress
6. Completion with launch option

**Installed Components:**
- Main executable in Program Files
- Desktop shortcut (optional)
- Start Menu entry
- Uninstaller
- Application data folder structure

**Registry Entries:**
- Uninstall information
- Auto-start entry (if selected)
- Application version info

## Distribution

### Standalone EXE
**Use Case:** Quick testing, portable usage, no installation needed

**Advantages:**
- No installation required
- Portable (USB drive, cloud storage)
- Quick to deploy
- Easy to update (just replace file)

**Distribution:**
- Direct download link
- Cloud storage (Google Drive, Dropbox)
- GitHub releases
- Email attachment

### Setup Installer
**Use Case:** Professional deployment, enterprise distribution, end-users

**Advantages:**
- Professional appearance
- Proper Windows integration
- Uninstaller included
- Start Menu integration
- Auto-update friendly
- User-friendly installation

**Distribution:**
- Official website download
- Software repositories
- Enterprise deployment tools
- Microsoft Store (with modifications)

## Version Information

**Current Version:** 1.0.0

**Release Date:** 2024

**License:** MIT License

**Platform:** Windows 10/11 (64-bit)

**Size:**
- Standalone EXE: ~50-100 MB
- Setup Installer: ~55-105 MB

## System Requirements

### Minimum Requirements
- **OS:** Windows 10 (64-bit)
- **RAM:** 2 GB
- **Disk Space:** 150 MB
- **Display:** 1024x768

### Recommended Requirements
- **OS:** Windows 11 (64-bit)
- **RAM:** 4 GB
- **Disk Space:** 500 MB (for backups)
- **Display:** 1920x1080

## Security & Privacy

### Data Security
- ✅ All operations performed locally
- ✅ No internet connection required
- ✅ No data sent to external servers
- ✅ Files remain on your computer
- ✅ No telemetry or tracking

### Code Signing
- Application is not code-signed (may trigger antivirus warnings)
- This is a false positive common with PyInstaller
- Source code is open and auditable
- Can be signed with a code signing certificate

### Permissions Required
- Read access to source folder
- Write access to backup destination
- Global hotkey registration
- System tray access
- Auto-start registry entry (optional)

## Development

### Building from Source

**Prerequisites:**
```cmd
pip install -r requirements.txt
```

**Build Executable:**
```cmd
build_exe.bat
```

**Run Tests:**
```cmd
python -m pytest tests/
```

**Run from Source:**
```cmd
python src/main.py
```

### Development Tools
- Python 3.8+
- PyQt6 Designer (for UI design)
- PyInstaller (for building)
- Inno Setup (for installer)
- Git (version control)

## Future Enhancements

### Planned Features
- Scheduled backups (daily, weekly, monthly)
- Backup compression (ZIP archives)
- Incremental backups
- Backup history and restore
- Multiple backup profiles
- Cloud storage integration
- File filtering by extension
- Backup verification
- Email notifications
- Network drive support

### Potential Improvements
- Code signing certificate
- Auto-update functionality
- Multi-language support
- Backup encryption
- Backup statistics dashboard
- Command-line interface
- Portable mode (no installation)

## Support & Documentation

### Documentation Files
- `README.md` - Quick start guide
- `BEFORE_INSTALLATION.md` - Pre-installation checklist
- `AFTER_INSTALLATION.md` - Post-installation guide
- `BUILD_INSTRUCTIONS.md` - Build process details
- `LICENSE.txt` - MIT License terms

### Getting Help
- Check documentation files
- Review log files in `%APPDATA%\HotkeyFileBackup\logs\`
- Check GitHub issues
- Contact support with log files

## Credits

**Developed by:** [Your Name/Organization]

**Built with:**
- Python & PyQt6
- pynput library
- PyInstaller
- Inno Setup

**License:** MIT License - Free and open source

---

## Summary

Hotkey File Backup is a complete, professional-grade backup solution that combines ease of use with powerful features. The application is distributed in two formats:

1. **Standalone EXE** - For portable, no-installation usage
2. **Setup Installer** - For professional installation with full Windows integration

Both versions provide the same functionality and user experience, allowing users to choose the distribution method that best fits their needs.

The application demonstrates modern software development practices, including proper architecture, comprehensive error handling, user-friendly interface design, and professional packaging for distribution.
