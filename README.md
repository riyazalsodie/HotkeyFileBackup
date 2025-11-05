# 🚀 Hotkey File Backup

<div align="center">

![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows%2010%2B-lightgrey.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Python](https://img.shields.io/badge/python-3.8%2B-blue.svg)

**A professional Windows desktop application for quick and easy file backup using customizable keyboard shortcuts**

[Features](#-features) • [Download](#-download) • [Installation](#-installation) • [Usage](#-usage) • [Building](#-building-from-source) • [Contributing](#-contributing)

</div>

---

## 📖 Overview

Hotkey File Backup is a modern, user-friendly backup application that allows you to backup your files instantly using global keyboard shortcuts. Built with Python and PyQt6, it features a beautiful interface with both light and dark themes, system tray integration, and real-time progress tracking.

### ✨ Key Highlights

- 🎯 **Global Hotkey Support** - Trigger backups from any application
- 🎨 **Modern UI** - Beautiful interface with light/dark themes
- 📊 **Real-time Progress** - Live progress tracking with toast notifications
- 🔄 **Smart File Handling** - Configurable overwrite policies
- 🚀 **System Tray Integration** - Runs quietly in the background
- ⚙️ **Auto-start Support** - Launch automatically with Windows

## 🎯 Features

### Core Functionality
- **Global Hotkey Backup**: Press your custom hotkey from anywhere to start backup
- **Manual Backup**: One-click backup from the main window
- **Progress Tracking**: Real-time progress with file count and size
- **Smart Exclusions**: Automatically skips `node_modules`, `.git`, `__pycache__`
- **Flexible Overwrite Policies**: Ask, Always, Skip, or Ask Once

### User Interface
- **Dual Themes**: Switch between light and dark modes
- **Custom Title Bar**: Modern frameless window with purple gradient
- **Toast Notifications**: Beautiful sliding notifications with progress bars
- **System Tray**: Minimize to tray with quick access menu
- **Rounded Corners**: Smooth, modern window design

### Advanced Features
- **Logging System**: Comprehensive logging with automatic rotation
- **Persistent Settings**: JSON-based configuration
- **Thread-Safe Operations**: Background processing without UI freezing
- **Error Handling**: Graceful error handling with user-friendly messages

## 📥 Download

### Latest Release

**Version 1.0.0**

Choose your preferred distribution method:

#### Option 1: Installer (Recommended)
- **File**: `HotkeyFileBackup_Setup_v1.0.0.exe`
- **Size**: ~55-105 MB
- **Features**: Full installation with shortcuts, auto-start, uninstaller
- [Download Installer](https://github.com/riyazalsodie/HotkeyFileBackup/releases)

#### Option 2: Standalone Executable
- **File**: `HotkeyFileBackup.exe`
- **Size**: ~50-100 MB
- **Features**: Portable, no installation required
- [Download Portable](https://github.com/riyazalsodie/HotkeyFileBackup/releases)

## 💻 Installation

### Using the Installer

1. Download `HotkeyFileBackup_Setup_v1.0.0.exe`
2. Run the installer
3. Follow the installation wizard
4. Choose optional components:
   - Desktop shortcut
   - Auto-start with Windows
5. Click Install
6. Launch the application

### Using Standalone Executable

1. Download `HotkeyFileBackup.exe`
2. Place it in your preferred location
3. Double-click to run
4. No installation required!

## 🎮 Usage

### Quick Start

1. **Launch the Application**
   - From desktop shortcut, Start Menu, or executable

2. **Configure Source Folder**
   - Click **Browse** next to "Source Folder"
   - Select the folder you want to backup

3. **Configure Backup Directory**
   - Click **Browse** next to "Backup Directory"
   - Select where backups should be stored

4. **Set Your Hotkey**
   - Click **Change** next to "Hotkey Configuration"
   - Press your desired key combination (e.g., `Ctrl+Alt+B`)
   - Click **OK**

5. **Start Backing Up!**
   - Press your hotkey from any application, or
   - Click **Start Backup Now** button

### Configuration Options

#### Options
- ✅ **Start with system** - Auto-launch when Windows starts
- ✅ **Minimize to tray** - Minimize to system tray instead of taskbar
- ✅ **Show notifications** - Display toast notifications for backups

#### Theme
- 🌞 **Light Theme** - Clean, bright interface
- 🌙 **Dark Theme** - Easy on the eyes

#### Advanced Settings
Access via **Settings** button:
- **Overwrite Policy**: How to handle existing files
- **Log Management**: View and clear application logs

### System Tray

Right-click the tray icon for quick access:
- **Show Window** - Restore the main window
- **Start Backup** - Begin backup immediately
- **Settings** - Open advanced settings
- **Exit** - Close the application

## 🛠️ Building from Source

### Prerequisites

- Python 3.8 or higher
- pip (Python package manager)
- Git

### Clone the Repository

```bash
git clone https://github.com/riyazalsodie/HotkeyFileBackup.git
cd HotkeyFileBackup
```

### Install Dependencies

```bash
pip install -r requirements.txt
```

### Run from Source

```bash
python src/main.py
```

### Build Executable

#### Windows
```cmd
build_exe.bat
```

Output: `dist/HotkeyFileBackup.exe`

#### Linux
```bash
chmod +x build_exe.sh
./build_exe.sh
```

Output: `dist/HotkeyFileBackup`

### Build Installer (Windows Only)

1. Install [Inno Setup 6](https://jrsoftware.org/isdl.php)
2. Build the executable first
3. Run:
```cmd
build_installer.bat
```

Output: `installer_output/HotkeyFileBackup_Setup_v1.0.0.exe`

For detailed build instructions, see [BUILD_INSTRUCTIONS.md](BUILD_INSTRUCTIONS.md)

## 📁 Project Structure

```
hotkey-file-backup/
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
│   │   └── styles.py           # Theme styling
│   └── system/                 # System integration
│       ├── tray_manager.py     # System tray
│       ├── autostart.py        # Auto-start functionality
│       └── notifications.py    # Notification manager
├── tests/                      # Unit tests
├── AutoBackup.ico              # Application icon
├── requirements.txt            # Python dependencies
├── build_exe.spec              # PyInstaller configuration
├── installer_setup.iss         # Inno Setup script
├── LICENSE.txt                 # MIT License
└── README.md                   # This file
```

## 🧪 Running Tests

```bash
python -m pytest tests/
```

## 🔧 Configuration

Configuration is stored in:
- **Windows**: `%APPDATA%\HotkeyFileBackup\config.json`
- **Linux**: `~/.local/share/hotkeyfilebackup/config.json`

Logs are stored in:
- **Windows**: `%APPDATA%\HotkeyFileBackup\logs\`
- **Linux**: `~/.local/share/hotkeyfilebackup/logs/`

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add amazing feature'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

### Development Guidelines

- Follow PEP 8 style guide
- Add tests for new features
- Update documentation as needed
- Keep commits atomic and well-described

## 🐛 Bug Reports

Found a bug? Please open an issue with:
- Description of the bug
- Steps to reproduce
- Expected behavior
- Screenshots (if applicable)
- Log files from `%APPDATA%\HotkeyFileBackup\logs\`

## 💡 Feature Requests

Have an idea? Open an issue with:
- Clear description of the feature
- Use case and benefits
- Any implementation suggestions

## 📋 Roadmap

### Planned Features
- [ ] Scheduled backups (daily, weekly, monthly)
- [ ] Backup compression (ZIP archives)
- [ ] Incremental backups
- [ ] Backup history and restore
- [ ] Multiple backup profiles
- [ ] Cloud storage integration
- [ ] File filtering by extension
- [ ] Backup verification
- [ ] Email notifications
- [ ] Command-line interface

## 📄 License

This project is licensed under the MIT License - see the [LICENSE.txt](LICENSE.txt) file for details.

## 🙏 Acknowledgments

- Built with [Python](https://www.python.org/) and [PyQt6](https://www.riverbankcomputing.com/software/pyqt/)
- Global hotkey detection using [pynput](https://github.com/moses-palmer/pynput)
- Packaged with [PyInstaller](https://www.pyinstaller.org/)
- Installer created with [Inno Setup](https://jrsoftware.org/isinfo.php)


## 🌟 Star History

If you find this project useful, please consider giving it a star! ⭐

---

<div align="center">

**Made with ❤️ by R ! Y 4 Z**


</div>

