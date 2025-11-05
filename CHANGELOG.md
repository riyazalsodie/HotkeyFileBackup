# Changelog

All notable changes to Hotkey File Backup will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2024-12-XX

### Added
- Initial release of Hotkey File Backup
- Global hotkey support for triggering backups from any application
- Manual backup functionality with progress tracking
- Modern UI with light and dark theme support
- Custom title bar with purple gradient design
- System tray integration with quick access menu
- Toast notifications with progress bars
- Configurable overwrite policies (Ask, Always, Skip, Ask Once)
- Auto-start with Windows support
- Comprehensive logging system with rotation
- Settings dialog for advanced configuration
- Folder exclusion (node_modules, .git, __pycache__)
- Real-time progress tracking during backups
- Thread-safe file operations
- Persistent JSON-based configuration
- Desktop shortcut creation (optional)
- Rounded window corners for modern appearance
- Application icon integration (window, tray, title bar)
- Professional Windows installer with Inno Setup
- Standalone portable executable
- MIT License

### Features
- **Core Functionality**
  - Global hotkey backup from any application
  - Manual backup with one-click operation
  - Smart file handling with configurable policies
  - Automatic folder exclusion
  - Progress tracking with file count and size

- **User Interface**
  - Modern, clean design
  - Light and dark theme support
  - Custom frameless window with title bar
  - Toast notifications with progress
  - System tray integration
  - Rounded corners and smooth animations

- **Configuration**
  - Customizable hotkey combinations
  - Source folder selection
  - Backup destination selection
  - Auto-start configuration
  - Minimize to tray option
  - Notification preferences
  - Overwrite policy settings

- **System Integration**
  - Windows auto-start support
  - System tray with context menu
  - Global hotkey detection
  - File system operations
  - Logging with rotation

### Technical Details
- Built with Python 3.8+ and PyQt6
- Global hotkey detection using pynput
- Thread-safe file operations
- Comprehensive error handling
- Resource path resolution for bundled executables
- PyInstaller for executable creation
- Inno Setup for professional installer

### Documentation
- Comprehensive README.md
- Installation guides (before and after)
- Build instructions for developers
- Installer creation guide
- Project description document
- Contributing guidelines
- MIT License

### Known Issues
- None reported in initial release

### Notes
- First stable release
- Tested on Windows 10 and Windows 11
- Supports 64-bit systems only

---

## [Unreleased]

### Planned Features
- Scheduled backups (daily, weekly, monthly)
- Backup compression (ZIP archives)
- Incremental backups
- Backup history and restore functionality
- Multiple backup profiles
- Cloud storage integration
- File filtering by extension
- Backup verification
- Email notifications
- Network drive support
- Command-line interface
- Multi-language support
- Backup encryption
- Statistics dashboard

### Under Consideration
- macOS and Linux support
- Backup to cloud services (Google Drive, Dropbox, OneDrive)
- Backup scheduling with cron-like syntax
- File versioning
- Backup comparison tool
- Backup size optimization
- Bandwidth throttling
- Backup to network locations
- Database backup support
- Backup templates

---

## Version History

### Version Numbering
- **Major.Minor.Patch** (e.g., 1.0.0)
- **Major**: Breaking changes or major new features
- **Minor**: New features, backward compatible
- **Patch**: Bug fixes and minor improvements

### Release Types
- **Stable**: Production-ready releases
- **Beta**: Feature-complete, testing phase
- **Alpha**: Early development, experimental features

---

## How to Update

### From Standalone EXE
1. Download the new version
2. Replace the old executable
3. Settings are preserved in `%APPDATA%\HotkeyFileBackup\`

### From Installer
1. Download the new installer
2. Run the installer (no need to uninstall)
3. Settings are automatically preserved
4. Application is updated in place

---

## Support

For issues, questions, or feature requests:
- GitHub Issues: https://github.com/riyazalsodie/HotkeyFileBackup/issues
- GitHub Discussions: https://github.com/riyazalsodie/HotkeyFileBackup/discussions

---

**Note**: This changelog will be updated with each release. Check back for the latest changes and improvements!
