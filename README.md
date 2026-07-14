# Personal CachyOS dotfiles

A portable chezmoi configuration for CachyOS, Niri, Noctalia v5, zsh, Alacritty, Starship, Fcitx5, fastfetch, btop, fish, and micro

The visual direction is adapted from [LanRhyme/dotfiles](https://github.com/LanRhyme/dotfiles), with machine identities, credentials, caches, old Noctalia v4 state, NVIDIA settings, and unsafe theme side effects removed

## Bootstrap

```bash
sudo pacman -S --needed chezmoi git
chezmoi init --apply YOUR_GITHUB_USER/YOUR_REPOSITORY
~/.local/bin/dotfiles-packages --install
```

Log out and back in after the first installation so environment variables and the Niri session are refreshed

## Daily workflow

```bash
chezmoi diff
chezmoi apply
dotfiles-sync
dotfiles-sync --commit "chore: update desktop configuration"
dotfiles-sync --push
```

`dotfiles-sync` never commits or pushes unless explicitly requested

## Theme architecture

Noctalia owns the wallpaper palette and generates small theme fragments for Niri, Alacritty, Starship, btop, GTK 3, and GTK 4. Chezmoi owns the structural application configuration. Generated files have a checked-in fallback so a fresh machine remains usable before Noctalia starts

## Security boundaries

The repository excludes Noctalia runtime state, GitHub authentication, KDE Connect certificates, application caches, shell history, environment files, and private keys. Run `dotfiles-doctor` and inspect `git diff --cached` before publishing
