#!/bin/bash
# Optional: flush macOS icon caches after changing Electron.app icon
set -e
echo "Flushing icon / notification caches (no sudo)..."
# User icon services cache
rm -rf "$HOME/Library/Caches/com.apple.iconservices.store" 2>/dev/null || true
find "$HOME/Library/Caches" -name "com.apple.iconservices*" -exec rm -rf {} + 2>/dev/null || true
# Restart UI services that hold icons
killall Dock 2>/dev/null || true
killall NotificationCenter 2>/dev/null || true
killall SystemUIServer 2>/dev/null || true
echo "Done. Reopen Study Alarm / Electron."
