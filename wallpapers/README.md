# Wallpapers

## Active wallpaper

**绣丛阡陌4K (有声)** — animated rainy scene with fallen leaves, puddle reflections and ambient audio.

- Workshop ID: `3016047975`
- Steam URL: `steam://url/CommunityFilePage/3016047975`
- Preview: `active/preview.gif`
- Plugin settings: `wekde/wallpaper/3016047975.json`

## All subscribed Workshop wallpapers

IDs are listed in `subscribed-workshop-ids.txt`. To re-subscribe on a new machine, open each in Steam:

```bash
while read id; do
  xdg-open "steam://url/CommunityFilePage/$id"
done < ~/Projects/cachyos-setup/wallpapers/subscribed-workshop-ids.txt
```

Or subscribe in bulk via the Steam Workshop page for Wallpaper Engine.

## Wallpaper Engine KDE plugin (linux-wallpaperengine)

Plugin config is saved in `wekde/`. On a new machine:

1. Install **Steam** and **Wallpaper Engine** (App ID `431960`).
2. Install the KDE Plasma plugin:
   ```bash
   paru -S plasma-wallpaperengine
   # or build from: https://github.com/catsout/wallpaper-engine-kde-plugin
   ```
3. Copy the plugin config:
   ```bash
   cp -r ~/Projects/cachyos-setup/wallpapers/wekde ~/.config/wekde
   ```
4. Right-click desktop → Configure Desktop and Wallpaper → **Wallpaper Engine for Plasma**.
5. Select the wallpaper with ID `3016047975` (or whichever you want from your subscribed list).

## Static wallpapers

Drop `.jpg` / `.png` files into this directory and set them via:
- Right-click desktop → Configure Desktop and Wallpaper → Image
