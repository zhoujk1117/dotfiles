# Dotfiles maintenance guide

This is a chezmoi source repository for a CachyOS, Niri, and Noctalia desktop

## Workflow

- Edit files in this source directory or use `chezmoi edit`
- Review `chezmoi diff` before `chezmoi apply`
- Run `dotfiles-doctor` after changing shell, Niri, Noctalia, or JSON/TOML configuration
- Use `chezmoi re-add` only for intentional changes made by an application
- Keep hardware-specific display configuration in `dot_config/niri/cfg/display.kdl`

## Safety

- Never track tokens, passwords, private keys, browser profiles, histories, caches, or device certificates
- Noctalia generates palette files for Niri, Alacritty, Starship, btop, and GTK; review generated changes before re-adding them
- Use pacman for repository packages; inspect PKGBUILDs before installing anything from the AUR
- Do not enable unattended Git pushes
