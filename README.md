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

| 站点 | 链接 | 备注 | 注册 |
| ---- | ---- | ---- | ---- |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ❌ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
| 1PTBA | [https://1ptba.com/](https://1ptba.com/) | 壹PT吧 | ✔️ |
