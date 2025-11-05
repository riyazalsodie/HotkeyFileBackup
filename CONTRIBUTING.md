# Contributing to Hotkey File Backup

Thank you for your interest in contributing to Hotkey File Backup! This document provides guidelines and instructions for contributing.

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for everyone.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates.

**When submitting a bug report, include:**
- Clear, descriptive title
- Detailed steps to reproduce
- Expected vs actual behavior
- Screenshots (if applicable)
- System information (Windows version, Python version)
- Log files from `%APPDATA%\HotkeyFileBackup\logs\`

### Suggesting Features

Feature suggestions are welcome! Please:
- Use a clear, descriptive title
- Provide detailed description of the feature
- Explain why this feature would be useful
- Include mockups or examples if possible

### Pull Requests

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Make your changes**
4. **Test thoroughly**
5. **Commit with clear messages**
   ```bash
   git commit -m "Add feature: description"
   ```
6. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```
7. **Open a Pull Request**

## Development Setup

### Prerequisites
- Python 3.8+
- Git
- Virtual environment (recommended)

### Setup Steps

1. **Clone your fork**
   ```bash
   git clone https://github.com/riyazalsodie/HotkeyFileBackup.git
   cd HotkeyFileBackup
   ```

2. **Create virtual environment**
   ```bash
   python -m venv venv
   venv\Scripts\activate  # Windows
   source venv/bin/activate  # Linux/Mac
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the application**
   ```bash
   python src/main.py
   ```

## Coding Standards

### Python Style Guide
- Follow PEP 8
- Use meaningful variable names
- Add docstrings to functions and classes
- Keep functions focused and small
- Maximum line length: 100 characters

### Code Example
```python
def backup_files(source: str, destination: str) -> bool:
    """
    Backup files from source to destination.
    
    Args:
        source: Source directory path
        destination: Destination directory path
        
    Returns:
        True if successful, False otherwise
    """
    # Implementation
    pass
```

### Commit Messages
- Use present tense ("Add feature" not "Added feature")
- Use imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit first line to 72 characters
- Reference issues and pull requests

**Good commit messages:**
```
Add hotkey customization feature
Fix progress bar not updating
Update documentation for installation
```

## Testing

### Running Tests
```bash
python -m pytest tests/
```

### Writing Tests
- Add tests for new features
- Ensure existing tests pass
- Aim for good code coverage
- Use descriptive test names

**Test example:**
```python
def test_file_backup_success():
    """Test successful file backup operation"""
    # Arrange
    source = "test_source"
    destination = "test_dest"
    
    # Act
    result = backup_files(source, destination)
    
    # Assert
    assert result is True
```

## Documentation

### Code Documentation
- Add docstrings to all public functions
- Include type hints
- Document complex logic with comments
- Update README.md for new features

### User Documentation
- Update user guides for new features
- Add screenshots for UI changes
- Keep installation instructions current
- Document configuration options

## Project Structure

```
src/
├── core/          # Core business logic
├── gui/           # User interface components
└── system/        # System integration
```

### Adding New Features

1. **Core Logic**: Add to `src/core/`
2. **UI Components**: Add to `src/gui/`
3. **System Integration**: Add to `src/system/`
4. **Tests**: Add to `tests/`

## Review Process

### Pull Request Checklist
- [ ] Code follows style guidelines
- [ ] Tests added/updated
- [ ] Documentation updated
- [ ] All tests pass
- [ ] No merge conflicts
- [ ] Descriptive PR title and description

### Review Timeline
- Initial review within 3-5 days
- Feedback addressed promptly
- Approved PRs merged quickly

## Getting Help

- **Questions**: Open a discussion
- **Issues**: Check existing issues first
- **Chat**: Join our community (if available)

## Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Mentioned in release notes
- Credited in the application (for major contributions)

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to Hotkey File Backup! 🎉
