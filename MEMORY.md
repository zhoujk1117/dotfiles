# 配置状态

## 平台

- CachyOS 运行于 Wayland，使用 Niri 和 Noctalia v5
- zsh 是登录 shell；fish 仍作为备用 shell 保留配置
- AMD 显卡
- DP-3 是左侧的 2560×1440 显示器，HDMI-A-1 是右侧的 2560×1440 显示器

## 设计决策

- Noctalia 使用低饱和度壁纸调色板及其原生 v5 模板引擎
- 当前 Noctalia 偏好为紧凑的 36 px 顶栏、浅色模式和 CachyOS `wave.png` 壁纸
- 动态模板覆盖 Niri、Alacritty、Starship、btop、GTK 3 和 GTK 4
- Niri 保留设备专用的输出布局，同时采用参考仓库的柔和动画、紧凑间距和半透明模糊效果
- 有意不使用参考仓库中覆盖范围较广的 Python 主题生成器和每两小时自动执行的 Git 推送
- 不收录运行时状态和机密信息；Git 身份与远程仓库 URL 由用户自行管理

## 待用户配置

- 发布前配置真实的 Git 用户名和电子邮箱
- 确定托管账户和仓库名称后，添加私有或公开的远程仓库
