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
| CMCT | [https://springsunday.net/](https://springsunday.net/) |不可说 | ❌ |
| DiscFan | [https://discfan.net/](https://discfan.net/) |碟粉 | ❌ |
| Dragon | [https://www.dragonhd.xyz/](https://www.dragonhd.xyz/) |龙之家 | ❌ |
| FreeFarm | [https://pt.0ff.cc/](https://pt.0ff.cc/) |自由农场 | ❌ |
| GGPT | [https://www.gamegamept.com/](https://www.gamegamept.com/) |国内游戏站 | ❌ |
| GPW | [https://greatposterwall.com/](https://greatposterwall.com/) |海豹 | ❌ |
| HaresClub | [https://club.hares.top/](https://club.hares.top/) |大白兔 | ❌ |
| HD4FANS | [https://pt.hd4fans.org/](https://pt.hd4fans.org/) |兽站 | ❌ |
| HDCity | [https://hdcity.city/](https://hdcity.city/) |城市 | ❌ |
| HDPost | [https://pt.hdpost.top/](https://pt.hdpost.top/) |普斯特 | ❌ |
| HDRoute | [http://hdroute.org/](http://hdroute.org/) |不能说 | ❌ |
| HDU | [https://pt.hdupt.com/](https://pt.hdupt.com/) |好多油 | ❌ |
| HDVideo | [https://hdvideo.one/](https://hdvideo.one/) |高清视频 | ❌ |
| OKPT | [https://www.okpt.net/](https://www.okpt.net/) |OKPT | ❌ |
| OpenCD | [https://open.cd/](https://open.cd/) |皇后 | ❌ |
| OurBits | [https://ourbits.club/](https://ourbits.club/) |我堡 | ❌ |
| Panda | [https://pandapt.net/](https://pandapt.net/) |熊猫站 | ❌ |
| PTer | [https://pterclub.com/](https://pterclub.com/) |猫站 | ❌ |
| PTsbao | [https://ptsbao.club/](https://ptsbao.club/) |烧包 | ❌ |
| TTG | [https://totheglory.im/](https://totheglory.im/) |听听歌 | ❌ |
| UltraHD | [https://ultrahd.net/](https://ultrahd.net/) |高清韩剧 | ❌ |
| WT-Sakura | [https://wintersakura.net/](https://wintersakura.net/) |冬樱 | ❌ |
