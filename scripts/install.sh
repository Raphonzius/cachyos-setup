#!/usr/bin/env bash
# CachyOS machine migration script

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOTFILES_DIR="$REPO_DIR/dotfiles"
KDE_DIR="$REPO_DIR/kde"

echo "==> CachyOS Setup Bootstrap"
echo "    Repo: $REPO_DIR"

# ── 1. Packages ───────────────────────────────────────────────────────────────
echo ""
echo "==> Installing pacman packages..."
sudo pacman -S --needed - < "$REPO_DIR/packages/pacman.txt"

echo ""
echo "==> Installing AUR packages (requires paru)..."
if ! command -v paru &>/dev/null; then
  echo "  paru not found — installing..."
  git clone https://aur.archlinux.org/paru-bin.git /tmp/paru-bin
  (cd /tmp/paru-bin && makepkg -si --noconfirm)
fi
grep -v '^#' "$REPO_DIR/packages/aur.txt" | grep -v '^$' | paru -S --needed -

# ── 2. Dotfiles ───────────────────────────────────────────────────────────────
echo ""
echo "==> Linking dotfiles..."
link() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  ln -sfv "$src" "$dst"
}

[[ -d "$DOTFILES_DIR/fish" ]]    && link "$DOTFILES_DIR/fish"    "$HOME/.config/fish"
[[ -d "$DOTFILES_DIR/kitty" ]]   && link "$DOTFILES_DIR/kitty"   "$HOME/.config/kitty"
[[ -d "$DOTFILES_DIR/starship" ]] && link "$DOTFILES_DIR/starship/starship.toml" "$HOME/.config/starship.toml"
[[ -d "$DOTFILES_DIR/nvim" ]]    && link "$DOTFILES_DIR/nvim"    "$HOME/.config/nvim"
[[ -d "$DOTFILES_DIR/environment.d" ]] && link "$DOTFILES_DIR/environment.d/terminal.conf" "$HOME/.config/environment.d/terminal.conf"

# ── 3. KDE Theming ────────────────────────────────────────────────────────────
echo ""
echo "==> Applying KDE theme (Catppuccin Mocha)..."
if [[ -f "$KDE_DIR/apply-theme.sh" ]]; then
  bash "$KDE_DIR/apply-theme.sh"
fi

# ── 4. Wallpaper Engine ───────────────────────────────────────────────────────
echo ""
echo "==> Wallpaper Engine"
echo "    1. Install Steam (flatpak or native)"
echo "    2. Install Wallpaper Engine (App ID 431960)"
echo "    3. See wallpapers/README.md for custom wallpaper setup"

echo ""
echo "==> Done! Log out and back in for all changes to take effect."
