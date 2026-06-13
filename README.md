# dots

Personal dotfiles for a Wayland desktop built on [Hyprland](https://hyprland.org/). Configured for the [Omarchy](https://omarchy.org/) environment but usable standalone.

## What's included

| Directory | App |
|-----------|-----|
| `hypr/` | Hyprland window manager |
| `waybar/` | Status bar |
| `rofi/` | App launcher |
| `ghostty/` | Terminal emulator |
| `fastfetch/` | System info display |
| `fontconfig/` | Font fallback rules |

## Setup

Uses [GNU Stow](https://www.gnu.org/software/stow/) to symlink configs into place.

```bash
git clone <repo-url> ~/dots
cd ~/dots
stow hypr waybar rofi ghostty fastfetch fontconfig
```

Each directory is structured so stow symlinks it relative to `$HOME` (e.g. `hypr/.config/hypr/` becomes `~/.config/hypr/`).

## Dependencies

### Core desktop

```bash
sudo pacman -S hyprland hyprpaper waybar rofi-wayland ghostty stow
```

### Terminal and files

```bash
sudo pacman -S fastfetch nautilus jq
```

### Screenshots

```bash
sudo pacman -S grim slurp swappy
```

### Audio and media

```bash
sudo pacman -S wireplumber playerctl mpd mpc
```

### Brightness

```bash
sudo pacman -S brightnessctl
```

### Theming

```bash
sudo pacman -S python-pywal
```

### Fonts

```bash
sudo pacman -S ttf-jetbrains-mono-nerd noto-fonts noto-fonts-emoji
```

### AUR packages

These are not in the official repos and require an AUR helper like `yay` or `paru`:

```bash
yay -S zen-browser signal-desktop wiremix hyprshutdown
```

## Keybindings

| Binding | Action |
|---------|--------|
| `Super + Return` | Terminal (ghostty) |
| `Super + Space` | App launcher (rofi) |
| `Super + E` | File manager (nautilus) |
| `Super + Shift + B` | Browser (zen-browser) |
| `Super + Shift + G` | Signal |
| `Super + W` | Close window |
| `Super + T` | Toggle float |
| `Super + F` | Toggle fullscreen |
| `Super + Shift + W` | Set wallpaper |
| `Super + Ctrl + A` | Audio mixer (wiremix) |
| `Super + Ctrl + B` | Restart waybar |
| `Super + 0-9` | Switch workspace |
| `Super + Shift + 0-9` | Move window to workspace |
| `Super + S` | Toggle scratchpad |
| `Print` | Screenshot (grim + slurp + swappy) |

## Theming

Colors are generated dynamically from the wallpaper using [pywal](https://github.com/dylanaraps/pywal). Running the wallpaper setter (`Super + Shift + W`) regenerates palettes for Hyprland, Waybar, Rofi, and Ghostty automatically.
