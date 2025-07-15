# Docker 应用一键安装脚本

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell Script](https://img.shields.io/badge/Shell-Bash-green.svg)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/Platform-Linux-blue.svg)](https://www.linux.org/)
[![GitHub stars](https://img.shields.io/github/stars/skywrt/Note.svg)](https://github.com/skywrt/Note/stargazers)
[![GitHub forks](https://img.shields.io/github/forks/skywrt/Note.svg)](https://github.com/skywrt/Note/network)

一个功能强大的 Docker 应用一键安装脚本，支持多种常用应用的快速部署、管理和卸载。

## 🌟 特性

- **🐳 智能 Docker 管理**: 自动检测并安装 Docker + Docker Compose
- **📦 多应用支持**: 支持 5 种常用应用的一键安装
- **🔧 智能检测**: 避免重复安装，智能处理已有应用
- **🎛️ 交互式界面**: 友好的菜单界面，支持命令行参数
- **🗑️ 完整卸载**: 支持应用卸载，可选择保留数据
- **🔒 安全机制**: 权限检查、确认机制、错误处理
- **📊 状态监控**: 实时显示应用运行状态

## 📋 支持的应用

| 应用 | 描述 | 默认端口 | 功能 |
|------|------|----------|------|
| **Portainer** | Docker 管理界面 | 9000 | 可视化Docker管理 |
| **qBittorrent** | BT下载工具 | 8080 | 种子下载管理 |
| **Vertex** | 文件管理下载工具 | 3000 | 多协议下载管理 |
| **Nginx Proxy Manager** | 反向代理管理 | 81 | 域名反向代理 |
| **Transmission** | BT下载工具 | 9091 | 轻量级种子下载 |

## 🖥️ 系统要求

### 支持的操作系统
- **Debian**: 10, 11, 12
- **Ubuntu**: 18.04, 20.04, 22.04

### 系统要求
- **权限**: Root 权限 (sudo)
- **网络**: 稳定的网络连接
- **存储**: 至少 2GB 可用空间
- **内存**: 建议 1GB 以上

## 💡 使用示例

### 🔥 零配置快速上手

```bash
# 第一步：一键交互式安装（自动检测系统，提供友好界面）
bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh)

# 第二步：选择菜单选项
# 1) 基础安装 (Docker + Docker Compose)  ← 首次使用选这个
# 2) 应用安装 (选择要安装的应用)        ← 然后选这个安装应用

# 第三步：等待自动安装完成，访问应用
# Portainer: http://your-server-ip:9000    (Docker管理界面)
# qBittorrent: http://your-server-ip:8080  (BT下载)
```

### ⚡ 高级用户一键安装

```bash
# 🚀 极速安装：Docker + Portainer + qBittorrent (一条命令完成)
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --install-apps --app portainer --app qbittorrent

# 🎯 精准安装：仅安装指定应用
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --install-apps --app nginx-proxy-manager

# 🔧 自定义端口安装
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --install-apps --app portainer --port portainer:9001
```

### 📊 常用维护命令

```bash
# 查看所有应用状态
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --status

# 进入卸载菜单
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --uninstall

# 查看完整帮助
bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --help
```

## 🚀 快速开始

### 方法一：⚡ 一键直接运行（推荐）

> 最简单的使用方式，无需下载文件，直接运行

```bash
# 🔥 一键交互式安装（推荐新手使用）
bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh)

# 或使用 wget
bash <(wget -qO- https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh)
```

#### 🚀 常用一键命令

```bash
# 🐳 仅安装 Docker + Docker Compose
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --install-docker-only

# 📦 一键安装 Portainer (Docker管理界面)
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --install-apps --app portainer

# 📦 一键安装多个应用
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --install-apps --app portainer --app qbittorrent

# 📊 查看系统状态
sudo bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --status

# ❓ 查看帮助信息
bash <(curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh) --help
```

### 方法二：📥 下载后使用

> 适合需要离线使用或自定义的用户

### 1. 下载脚本

```bash
# 使用 wget 下载
wget https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh

# 或使用 curl 下载
curl -O https://raw.githubusercontent.com/skywrt/Note/main/docker-app-installer/docker-app-installer.sh

# 添加执行权限
chmod +x docker-app-installer.sh
```

### 2. 运行脚本

```bash
# 交互式安装
sudo ./docker-app-installer.sh

# 查看帮助
./docker-app-installer.sh --help
```

## 📖 使用方法

### 🎯 交互式模式

运行脚本后，您将看到主菜单：

```
========================================
    Docker 应用一键安装脚本 v1.0       
========================================

请选择操作:
1) 基础安装 (Docker + Docker Compose)
2) 应用安装 (选择要安装的应用)
3) 应用卸载 (卸载已安装的应用)
4) 查看当前状态
5) 退出
```

### 🎮 菜单操作

#### 1️⃣ 基础安装
- 仅安装 Docker 和 Docker Compose
- 适合需要自定义配置的用户

#### 2️⃣ 应用安装
- 选择要安装的应用
- 支持端口自定义
- 自动创建目录结构

#### 3️⃣ 应用卸载
- 卸载已安装的应用
- 可选择保留数据目录
- 支持批量卸载

#### 4️⃣ 查看状态
- 显示 Docker 服务状态
- 列出所有容器状态
- 显示系统资源信息

### ⌨️ 命令行模式

#### 基础安装
```bash
# 仅安装 Docker 基础组件
sudo ./docker-app-installer.sh --install-docker-only
```

#### 应用安装
```bash
# 安装单个应用
sudo ./docker-app-installer.sh --install-apps --app portainer

# 安装多个应用
sudo ./docker-app-installer.sh --install-apps --app portainer --app qbittorrent

# 自定义端口安装
sudo ./docker-app-installer.sh --install-apps --app portainer --port portainer:9001
```

#### 应用卸载
```bash
# 卸载单个应用
sudo ./docker-app-installer.sh --uninstall-apps --app portainer

# 卸载多个应用
sudo ./docker-app-installer.sh --uninstall-apps --app portainer --app qbittorrent

# 卸载所有应用
sudo ./docker-app-installer.sh --uninstall-apps --all

# 交互式卸载菜单
sudo ./docker-app-installer.sh --uninstall
```

#### 其他功能
```bash
# 查看系统状态
sudo ./docker-app-installer.sh --status

# 显示帮助信息
./docker-app-installer.sh --help
```

## 📁 目录结构

脚本会在 `/home/docker` 创建以下目录结构：

```
/home/docker/
├── portainer/
│   └── data/
├── qbittorrent/
│   ├── config/
│   ├── downloads/
│   └── watch/
├── vertex/
│   └── (应用数据)
├── nginx-proxy-manager/
│   ├── data/
│   └── letsencrypt/
└── transmission/
    ├── config/
    ├── downloads/
    └── watch/
```

## 🔧 高级配置

### 自定义数据目录

编辑脚本中的 `DOCKER_BASE_DIR` 变量：

```bash
# 默认目录
DOCKER_BASE_DIR="/home/docker"

# 自定义目录
DOCKER_BASE_DIR="/data/docker"
```

### 自定义应用端口

在应用选择菜单中选择 "p) 配置端口" 或使用命令行参数：

```bash
sudo ./docker-app-installer.sh --install-apps --app portainer --port portainer:9001
```

### 应用特定配置

#### Portainer
- **默认端口**: 9000
- **数据目录**: `/home/docker/portainer/data`
- **首次访问**: 需要创建管理员账户

#### qBittorrent
- **默认端口**: 8080
- **版本**: 4.5.5
- **默认用户**: admin
- **获取密码**: `docker logs qbittorrent`

#### Vertex
- **默认端口**: 3000
- **镜像**: lswl/vertex:stable
- **数据目录**: `/home/docker/vertex`
- **时区**: Asia/Shanghai

#### Nginx Proxy Manager
- **默认端口**: 81 (管理界面), 80/443 (代理)
- **默认登录**: admin@example.com / changeme

#### Transmission
- **默认端口**: 9091
- **默认登录**: admin / changeme

## 🛡️ 安全特性

### 权限检查
- 自动检查 Root 权限
- 用户组管理 (docker 组)

### 系统检查
- 操作系统兼容性验证
- Docker 服务状态检查

### 安全确认
- 卸载前需要输入 'YES' 确认
- 数据删除前单独确认
- 端口冲突检测

### 错误处理
- 完善的错误捕获机制
- 失败时的回滚机制
- 详细的日志输出

## 🔍 故障排除

### 常见问题

#### 1. 权限不足
```bash
# 解决方案：使用 sudo 运行
sudo ./docker-app-installer.sh
```

#### 2. Docker 服务启动失败
```bash
# 检查 Docker 状态
sudo systemctl status docker

# 重启 Docker 服务
sudo systemctl restart docker
```

#### 3. 端口被占用
```bash
# 检查端口占用
sudo netstat -tulpn | grep :端口号

# 或使用 ss 命令
sudo ss -tulpn | grep :端口号
```

#### 4. 容器启动失败
```bash
# 查看容器日志
docker logs 容器名

# 查看容器状态
docker ps -a
```

### 日志查看

脚本运行时会显示详细的日志信息：

- `[INFO]`: 一般信息
- `[SUCCESS]`: 成功操作
- `[WARNING]`: 警告信息
- `[ERROR]`: 错误信息

### 手动清理

如果需要完全清理：

```bash
# 停止所有容器
docker stop $(docker ps -q)

# 删除所有容器
docker rm $(docker ps -aq)

# 清理镜像
docker image prune -f

# 删除数据目录
sudo rm -rf /home/docker
```

## 🤝 贡献指南

欢迎提交 Issue 和 Pull Request！

### 报告问题

1. 检查是否已存在相同问题
2. 提供详细的环境信息
3. 包含错误日志和重现步骤

### 提交代码

1. Fork 项目
2. 创建功能分支
3. 提交更改
4. 创建 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 📈 更新日志

### v1.0 (当前版本)
- ✨ 初始发布
- 🐳 支持 Docker + Docker Compose 自动安装
- 📦 支持 5 种常用应用
- 🗑️ 完整的卸载功能
- 🎛️ 交互式和命令行双模式
- 🔒 完善的安全机制

---

⭐ 如果这个项目对您有帮助，请给个 Star！ 
