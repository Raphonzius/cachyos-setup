# KDE Configuration

## Files to track

| File | Description |
|------|-------------|
| `colors/*.colors` | Catppuccin color schemes |
| `kvantum/` | Kvantum theme files |
| `plasma-org.kde.plasma.desktop-appletsrc` | Panel + widget layout |
| `plasma-layout.js` | KDE scripting layout export |
| `apply-theme.sh` | Auto-applies everything above |

## Exporting your current KDE config

```bash
# Color schemes
cp ~/.local/share/color-schemes/Catppuccin*.colors \
   ~/Projects/cachyos-setup/kde/colors/

# Kvantum
cp -r ~/.config/Kvantum/catppuccin* \
   ~/Projects/cachyos-setup/kde/kvantum/

# Panel / widgets layout
cp ~/.config/plasma-org.kde.plasma.desktop-appletsrc \
   ~/Projects/cachyos-setup/kde/
```

## Catppuccin resources

- GTK theme: `catppuccin-gtk-theme-mocha` (AUR)
- KDE color scheme: https://github.com/catppuccin/kde
- Kvantum: https://github.com/catppuccin/Kvantum
- Cursors: `catppuccin-cursors-mocha` (AUR)
