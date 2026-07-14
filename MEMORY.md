# Configuration state

## Platform

- CachyOS on Wayland with Niri and Noctalia v5
- zsh is the login shell; fish remains configured as an alternative
- AMD graphics
- DP-3 is the left 2560x1440 display and HDMI-A-1 is the right 2560x1440 display

## Design decisions

- Noctalia uses the muted wallpaper palette and its native v5 template engine
- Dynamic templates cover Niri, Alacritty, Starship, btop, GTK 3, and GTK 4
- Niri keeps machine-specific output placement while adopting the reference repository's soft animations, compact gaps, and translucent blur
- The reference repository's broad Python theme writer and automatic two-hour Git push are intentionally not used
- Runtime state and secrets are excluded; Git identity and the remote URL remain user-owned

## Pending user setup

- Configure a real Git name and email before publishing
- Add a private or public remote when the desired hosting account and repository name are known
