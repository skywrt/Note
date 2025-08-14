1、将自带的源文件sources.list备份
```
cp /etc/apt/sources.list /etc/apt/sources.list_bak
```

2、编辑sources.list
```
nano /etc/apt/sources.list
```

国内清华源速度较快，偶有出错可以尝试用--fix--update修复。如果不行可以更换下面官方源来解决（速度很慢）
```
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware
```

3、更新列表并升级
```
apt update -y  && apt upgrade -y && apt install -y curl wget sudo nano
```

# 保活脚本
```
bash <(curl -s https://raw.githubusercontent.com/skywrt/Note/main/check_cron.sh)
```
# NAS-Tools 一键部署脚本

1.  **准备工作**
    * 确保你的 NAS 已安装 Docker。
    * 通过 SSH 登录到你的 NAS。

2.  **下载并执行脚本**
    将本脚本文件下载到你的 NAS 任意目录，例如 `/volume1/docker/`。
    
    你也可以使用 `curl` 命令直接下载并运行：

    ```bash
    curl -fsSL https://raw.githubusercontent.com/skywrt/Note/main/NasTool.sh -o NasTool.sh && chmod +x NasTool.sh && ./NasTool.sh

    ```
