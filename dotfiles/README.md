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

## Exporting your current dotfiles

```bash
cp -r ~/.config/fish      ~/Projects/cachyos-setup/dotfiles/
cp -r ~/.config/kitty     ~/Projects/cachyos-setup/dotfiles/
cp    ~/.config/starship.toml ~/Projects/cachyos-setup/dotfiles/starship/
cp -r ~/.config/nvim      ~/Projects/cachyos-setup/dotfiles/
```
