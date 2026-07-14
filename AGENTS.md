# Dotfiles 维护指南

这是用于 CachyOS、Niri 和 Noctalia 桌面环境的 chezmoi 源仓库。

## 工作流程

- 直接在此源目录中编辑文件，或使用 `chezmoi edit`
- 执行 `chezmoi apply` 前先检查 `chezmoi diff`
- 修改 shell、Niri、Noctalia 或 JSON/TOML 配置后，运行 `dotfiles-doctor`
- 仅在需要收录应用程序有意产生的改动时使用 `chezmoi re-add`
- 将硬件相关的显示器配置保存在 `dot_config/niri/cfg/display.kdl` 中

## 安全要求

- 禁止跟踪令牌、密码、私钥、浏览器配置、历史记录、缓存或设备证书
- Noctalia 会为 Niri、Alacritty、Starship、btop 和 GTK 生成调色板文件；重新收录前应检查生成的改动
- 使用 pacman 安装官方仓库软件包；从 AUR 安装任何内容前应检查 PKGBUILD
- 不要启用无人值守的 Git 推送
