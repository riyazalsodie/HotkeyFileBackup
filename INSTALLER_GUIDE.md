# Installer Creation Guide - Hotkey File Backup

This guide explains how to create a professional Windows installer for Hotkey File Backup using Inno Setup.

## Prerequisites

### 1. Install Inno Setup

Download and install Inno Setup 6 from:
**https://jrsoftware.org/isdl.php**

- Download the latest version (Inno Setup 6.x)
- Run the installer
- Use default installation path: `C:\Program Files (x86)\Inno Setup 6\`
- Complete the installation

### 2. Build the Executable

Before creating the installer, you must first build the standalone executable:

```cmd
build_exe.bat
```

This will create `dist\HotkeyFileBackup.exe`

## Building the Installer

### Method 1: Using the Build Script (Recommended)

Simply run the build script:

```cmd
build_installer.bat
```

The script will:
1. Check if Inno Setup is installed
2. Verify the executable exists
3. Create the installer
4. Output to `installer_output\` folder

### Method 2: Manual Build

1. Open Inno Setup Compiler
2. File → Open → Select `installer_setup.iss`
3. Build → Compile
4. The installer will be created in `installer_output\`

## Installer Configuration

The installer is configured in `installer_setup.iss`:

### Basic Information
```pascal
#define MyAppName "Hotkey File Backup"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Hotkey Backup"
#define MyAppExeName "HotkeyFileBackup.exe"
```

### Installation Options

The installer includes:
- ✅ Main application executable
- ✅ Desktop shortcut (optional)
- ✅ Start Menu entry
- ✅ Auto-start option
- ✅ License agreement (MIT)
- ✅ Before/After installation instructions
- ✅ Uninstaller
- ✅ Application icon

### Installation Locations

**Program Files:**
- `C:\Program Files\Hotkey File Backup\HotkeyFileBackup.exe`
- `C:\Program Files\Hotkey File Backup\README.md`
- `C:\Program Files\Hotkey File Backup\LICENSE.txt`
- `C:\Program Files\Hotkey File Backup\AutoBackup.ico`

**Start Menu:**
- `Start Menu\Programs\Hotkey File Backup\`

**Desktop:**
- `Desktop\Hotkey File Backup.lnk` (optional)

**Application Data:**
- `%APPDATA%\HotkeyFileBackup\config.json`
- `%APPDATA%\HotkeyFileBackup\logs\`

## Customizing the Installer

### Change Version Number

Edit `installer_setup.iss`:
```pascal
#define MyAppVersion "1.0.0"  // Change this
```

### Change Application Name

Edit `installer_setup.iss`:
```pascal
#define MyAppName "Your App Name"
```

### Change Publisher

Edit `installer_setup.iss`:
```pascal
#define MyAppPublisher "Your Company"
#define MyAppURL "https://yourwebsite.com"
```

### Add More Files

Add to the `[Files]` section:
```pascal
Source: "yourfile.txt"; DestDir: "{app}"; Flags: ignoreversion
```

### Modify Installation Options

Edit the `[Tasks]` section:
```pascal
Name: "desktopicon"; Description: "Create desktop icon"; Flags: checked
```

## Installer Features

### 1. Pre-Installation Check
- Detects if application is running
- Offers to close it automatically
- Prevents installation conflicts

### 2. License Agreement
- Displays MIT License
- User must accept to continue
- Standard legal protection

### 3. Installation Directory
- Default: `C:\Program Files\Hotkey File Backup\`
- User can customize location
- Validates disk space

### 4. Component Selection
- Desktop shortcut (optional)
- Quick Launch icon (optional, Windows 7)
- Auto-start with Windows (optional)

### 5. Progress Display
- Shows installation progress
- Lists files being installed
- Estimated time remaining

### 6. Post-Installation
- Option to launch application
- Displays after-installation guide
- Creates all shortcuts

### 7. Uninstaller
- Removes application files
- Removes shortcuts
- Optionally removes config files
- Cleans registry entries

## Testing the Installer

### Test Installation

1. **Clean System Test:**
   - Test on a clean Windows installation
   - Or use a virtual machine
   - Verify all features work

2. **Upgrade Test:**
   - Install version 1.0.0
   - Install version 1.0.1 over it
   - Verify settings are preserved

3. **Uninstall Test:**
   - Install the application
   - Uninstall completely
   - Verify all files removed
   - Check for leftover registry entries

### Test Checklist

- [ ] Installer runs without errors
- [ ] License agreement displays correctly
- [ ] Installation completes successfully
- [ ] Desktop shortcut works (if selected)
- [ ] Start Menu entry works
- [ ] Application launches correctly
- [ ] Auto-start works (if selected)
- [ ] Uninstaller removes all files
- [ ] Config files preserved/removed as expected

## Distribution

### Installer Output

After building, you'll have:
```
installer_output/
└── HotkeyFileBackup_Setup_v1.0.0.exe  (~55-105 MB)
```

### Distribution Methods

1. **Direct Download:**
   - Upload to your website
   - Provide direct download link
   - Include version number in filename

2. **GitHub Releases:**
   - Create a new release
   - Upload the installer as an asset
   - Add release notes

3. **Cloud Storage:**
   - Google Drive
   - Dropbox
   - OneDrive
   - Share public link

4. **Software Repositories:**
   - Softpedia
   - Download.com
   - FileHippo
   - SourceForge

### File Naming Convention

```
HotkeyFileBackup_Setup_v1.0.0.exe
HotkeyFileBackup_Setup_v1.0.1.exe
HotkeyFileBackup_Setup_v2.0.0.exe
```

## Code Signing (Optional)

For professional distribution, consider code signing:

### Benefits
- Removes "Unknown Publisher" warning
- Increases user trust
- Required for some distribution channels
- Prevents tampering

### How to Sign

1. **Obtain Certificate:**
   - Purchase from DigiCert, Sectigo, etc.
   - Cost: $100-$500/year
   - Requires business verification

2. **Sign the Installer:**
   ```cmd
   signtool sign /f certificate.pfx /p password /t http://timestamp.digicert.com HotkeyFileBackup_Setup_v1.0.0.exe
   ```

3. **Verify Signature:**
   - Right-click installer
   - Properties → Digital Signatures
   - Verify certificate is valid

## Troubleshooting

### Inno Setup Not Found

**Error:** "Inno Setup not found!"

**Solution:**
1. Install Inno Setup from https://jrsoftware.org/isdl.php
2. Or update path in `build_installer.bat`:
   ```cmd
   set "INNO_PATH=C:\Your\Custom\Path\ISCC.exe"
   ```

### Executable Not Found

**Error:** "HotkeyFileBackup.exe not found!"

**Solution:**
1. Run `build_exe.bat` first
2. Verify `dist\HotkeyFileBackup.exe` exists
3. Check for build errors

### Compilation Errors

**Error:** Inno Setup compilation fails

**Solution:**
1. Open `installer_setup.iss` in Inno Setup
2. Check error messages
3. Verify all source files exist
4. Check file paths are correct

### Installer Won't Run

**Error:** Installer fails to start

**Solution:**
1. Check Windows version (requires Windows 10+)
2. Run as administrator
3. Disable antivirus temporarily
4. Check disk space

## Advanced Configuration

### Custom Wizard Pages

Add custom pages to the installer:
```pascal
[Code]
procedure InitializeWizard;
var
  Page: TWizardPage;
begin
  Page := CreateCustomPage(wpWelcome, 'Custom Page', 'Description');
  // Add custom controls
end;
```

### Silent Installation

Support silent installation:
```cmd
HotkeyFileBackup_Setup_v1.0.0.exe /SILENT
HotkeyFileBackup_Setup_v1.0.0.exe /VERYSILENT
```

### Custom Installation Types

Define installation types:
```pascal
[Types]
Name: "full"; Description: "Full installation"
Name: "compact"; Description: "Compact installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom
```

## Version Updates

### Updating to New Version

1. Update version in `installer_setup.iss`:
   ```pascal
   #define MyAppVersion "1.0.1"
   ```

2. Rebuild executable with new version:
   ```cmd
   build_exe.bat
   ```

3. Rebuild installer:
   ```cmd
   build_installer.bat
   ```

4. Test upgrade installation

### Upgrade Behavior

The installer automatically:
- Detects previous installation
- Preserves user settings
- Updates executable
- Maintains shortcuts
- Updates registry entries

## Summary

You now have a complete installer creation system:

1. **Build Executable:** `build_exe.bat`
2. **Build Installer:** `build_installer.bat`
3. **Output:** `installer_output\HotkeyFileBackup_Setup_v1.0.0.exe`
4. **Distribute:** Share the installer with users

The installer provides a professional installation experience with all standard features users expect from Windows applications.
