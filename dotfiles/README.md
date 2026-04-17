# Dotfiles

Place your config directories here, mirroring `~/.config/`:

```
dotfiles/
├── fish/          → ~/.config/fish/
│   ├── config.fish
│   └── functions/
├── kitty/         → ~/.config/kitty/
│   └── kitty.conf
├── starship/      → ~/.config/starship.toml
│   └── starship.toml
└── nvim/          → ~/.config/nvim/
    └── init.lua
```

Run `scripts/install.sh` to symlink everything into place.

## Configs included

| Directory | Source |
|-----------|--------|
| `fish/` | `~/.config/fish/` — shell config + Catppuccin themes + Pure prompt |
| `kitty/` | `~/.config/kitty/kitty.conf` — terminal emulator |
| `alacritty/` | `~/.config/alacritty/alacritty.toml` — Nord color terminal |
| `fastfetch/` | `~/.config/fastfetch/config.jsonc` — system info display |
| `micro/` | `~/.config/micro/settings.json` + Catppuccin colorschemes |
| `spicetify/` | `~/.config/spicetify/config-xpui.ini` — Spotify theming |
| `gtk-3.0/` | `~/.config/gtk-3.0/settings.ini` |
| `gtk-4.0/` | `~/.config/gtk-4.0/settings.ini` |

> Note: `spicetify/config-xpui.ini` has an absolute `prefs_path` — update it after migration.
