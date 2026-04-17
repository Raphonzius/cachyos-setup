# CachyOS Setup

Reproducible CachyOS machine setup — KDE Plasma, Catppuccin Mocha, Wallpaper Engine, dotfiles, and package lists.

## Quick start on a fresh machine

```bash
git clone https://github.com/Raphonzius/cachyos-setup.git ~/Projects/cachyos-setup
cd ~/Projects/cachyos-setup
bash scripts/install.sh
```

## Structure

```
.
├── packages/
│   ├── pacman.txt       # Official repo packages
│   └── aur.txt          # AUR packages (paru)
├── dotfiles/            # Shell, terminal, editor configs (symlinked to ~/.config)
│   ├── fish/
│   ├── kitty/
│   ├── starship/
│   └── nvim/
├── kde/                 # KDE Plasma theme + layout
│   ├── colors/          # Catppuccin color schemes
│   ├── kvantum/         # Kvantum theme
│   ├── apply-theme.sh   # Applies all KDE theming
│   └── README.md
├── wallpapers/          # Static wallpapers + Wallpaper Engine setup
│   └── README.md
└── scripts/
    └── install.sh       # Full bootstrap script
```

## Theming

- **Color scheme**: Catppuccin Mocha
- **Kvantum**: Catppuccin Mocha
- **Cursors**: Catppuccin Mocha
- **GTK**: Catppuccin Mocha

See `kde/README.md` for how to export and restore your KDE config.

## Wallpaper Engine

Animated wallpapers via Steam + the KDE Plasma plugin.  
See `wallpapers/README.md` for full setup instructions.

## Adding your dotfiles

See `dotfiles/README.md` for which files to copy and how symlinks work.
