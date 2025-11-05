from setuptools import setup, find_packages

setup(
    name="hotkey-file-backup",
    version="1.0.0",
    description="Professional file backup application with hotkey support",
    author="Your Name",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    install_requires=[
        "PyQt6>=6.6.0",
        "pynput>=1.7.6",
    ],
    entry_points={
        "console_scripts": [
            "hotkey-backup=main:main",
        ],
    },
    python_requires=">=3.8",
)
