# 个人 CachyOS 配置

一套可移植的 chezmoi 配置，适用于 CachyOS、Niri、Noctalia v5、zsh、Alacritty、Starship、Fcitx5、fastfetch、btop、fish 和 micro。

## 初始化

```bash
sudo pacman -S --needed chezmoi git
chezmoi init --apply YOUR_GITHUB_USER/YOUR_REPOSITORY
~/.local/bin/dotfiles-packages --install
```

首次安装后请注销并重新登录，以刷新环境变量和 Niri 会话。

## 日常使用

```bash
chezmoi diff
chezmoi apply
dotfiles-sync
dotfiles-sync --commit "chore: 更新桌面配置"
dotfiles-sync --push
```

除非明确指定，否则 `dotfiles-sync` 不会提交或推送改动。

## 主题架构

Noctalia 管理壁纸调色板，并为 Niri、Alacritty、Starship、btop、GTK 3 和 GTK 4 生成小型主题片段。Chezmoi 管理应用程序的结构性配置。生成文件均有纳入版本控制的备用版本，因此新设备在 Noctalia 启动前仍可正常使用。

## 安全边界

本仓库不包含 Noctalia 运行时状态、GitHub 身份认证信息、KDE Connect 证书、应用程序缓存、shell 历史记录、环境文件和私钥。发布前请运行 `dotfiles-doctor`，并检查 `git diff --cached`。
