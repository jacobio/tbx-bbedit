#!/bin/sh
set -e

REPO="https://raw.githubusercontent.com/jacobio/tbx-bbedit/main"
DEST="$HOME/Library/Application Support/BBEdit/Language Modules"
mkdir -p "$DEST"

# When piped via curl|sh, $0 is "sh" — use that to detect local vs remote
SCRIPT_DIR="$(cd "$(dirname "$0")" 2>/dev/null && pwd)"
if [ "$(basename "$0")" = "install.sh" ] && [ -f "$SCRIPT_DIR/Tinderbox.plist" ]; then
    ln -sf "$SCRIPT_DIR/Tinderbox.plist" "$DEST/Tinderbox.plist"
    echo "Linked: $DEST/Tinderbox.plist -> $SCRIPT_DIR/Tinderbox.plist"
else
    curl -fsSL "$REPO/Tinderbox.plist" -o "$DEST/Tinderbox.plist"
    echo "Installed: $DEST/Tinderbox.plist"
fi

echo "Relaunch BBEdit to activate."
