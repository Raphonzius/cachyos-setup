# Wallpapers

## Static wallpapers

Drop `.jpg` / `.png` files into this directory. The install script will not auto-apply them — set them via:
- **KDE**: Right-click desktop → Configure Desktop and Wallpaper → Image

## Wallpaper Engine (animated / interactive)

Wallpaper Engine runs through Steam on Linux via Plasma integration.

### Setup steps

1. Install **Steam** (native or Flatpak):
   ```bash
   sudo pacman -S steam
   # or: flatpak install com.valvesoftware.Steam
   ```

2. In Steam, install **Wallpaper Engine** (App ID `431960`).

3. Install the KDE Plasma plugin:
   ```bash
   paru -S plasma-wallpaperengine
   # or build from: https://github.com/catsout/wallpaper-engine-kde-plugin
   ```

4. Right-click desktop → Configure Desktop and Wallpaper → **Wallpaper Engine for Plasma**.

5. Subscribe to wallpapers on the Steam Workshop and they'll appear inside the plugin.

### Saving your wallpaper choices

To persist which wallpaper is active, export your KDE desktop config:

```bash
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc \
   ~/Projects/cachyos-setup/kde/plasma-org.kde.plasma.desktop-appletsrc
```

Then re-add it to git.
