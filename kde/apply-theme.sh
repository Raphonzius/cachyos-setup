#!/usr/bin/env bash
# Apply Catppuccin Mocha theme to KDE Plasma

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
KDE_DIR="$REPO_DIR/kde"

echo "==> Applying KDE color scheme..."
if [[ -f "$KDE_DIR/colors/CatppuccinMochaRed.colors" ]]; then
  mkdir -p "$HOME/.local/share/color-schemes"
  cp "$KDE_DIR/colors/"*.colors "$HOME/.local/share/color-schemes/"
  plasma-apply-colorscheme CatppuccinMochaRed || true
fi

echo "==> Applying Kvantum theme..."
if [[ -d "$KDE_DIR/kvantum/catppuccin-mocha" ]]; then
  mkdir -p "$HOME/.config/Kvantum"
  cp -r "$KDE_DIR/kvantum/catppuccin-mocha" "$HOME/.config/Kvantum/"
  kvantummanager --set catppuccin-mocha || true
fi

echo "==> Restoring KDE panel/widget layout..."
if [[ -f "$KDE_DIR/plasma-layout.js" ]]; then
  qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.loadScriptInInteractiveConsole \
    "$(cat "$KDE_DIR/plasma-layout.js")" || echo "  (plasma layout apply skipped — requires running session)"
fi

echo "==> Setting kitty as default terminal..."
kwriteconfig5 --file kdeglobals --group General --key TerminalApplication kitty
kwriteconfig5 --file kdeglobals --group General --key TerminalService kitty.desktop

echo "==> KDE theming done."
