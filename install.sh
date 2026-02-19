#!/bin/sh
set -e

REPO="https://raw.githubusercontent.com/jacobio/tbx-bbedit/main"
DEST="$HOME/Library/Application Support/BBEdit/Language Modules"
SCRIPT_DIR="$(cd "$(dirname "$0")" 2>/dev/null && pwd)"

mkdir -p "$DEST"

if [ -f "$SCRIPT_DIR/Tinderbox.plist" ]; then
    ln -sf "$SCRIPT_DIR/Tinderbox.plist" "$DEST/Tinderbox.plist"
    echo "Linked: $DEST/Tinderbox.plist -> $SCRIPT_DIR/Tinderbox.plist"
else
    curl -fsSL "$REPO/Tinderbox.plist" -o "$DEST/Tinderbox.plist"
    echo "Installed: $DEST/Tinderbox.plist"
fi

echo "Relaunch BBEdit to activate."
