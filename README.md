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
| 52PT | [https://52pt.site/](https://52pt.site/) | 吾爱PT | ✔️ |
| Audiences | [https://audiences.me/](https://audiences.me/) | 观众 | ❌ |
| BTSchool | [https://pt.btschool.club/](https://pt.btschool.club/) |  学校 | ✔️ |
| BYR | [https://byr.pt/](https://byr.pt/) | 北邮教育站 | ❌ |
| CarPt | [https://carpt.net/](https://carpt.net/) |车站 | ✔️ |
| CMCT | [https://springsunday.net/](https://springsunday.net/) |不可说 | ❌ |
| CHDBits | [https://ptchdbits.co/](https://ptchdbits.co/) |彩虹岛 | ❌ |
| Cyanbug | [https://cyanbug.net/](https://cyanbug.net/) |大青虫 | ❌ |
| DiscFan | [https://discfan.net/](https://discfan.net/) |碟粉 | ❌ |
| Dragon | [https://www.dragonhd.xyz/](https://www.dragonhd.xyz/) |龙之家 | ❌ |
| FRDS | [https://pt.keepfrds.com/](https://pt.keepfrds.com/) |朋友 | ❌ |
| FreeFarm | [https://pt.0ff.cc/](https://pt.0ff.cc/) |自由农场 | ❌ |
| GPW | [https://greatposterwall.com/](https://greatposterwall.com/) |海豹 | ❌ |
| HaiDan | [https://www.haidan.video/](https://www.haidan.video/) |海胆 | ✔️ |
| HaresClub | [https://club.hares.top/](https://club.hares.top/) |大白兔 | ❌ |
| HD4FANS | [https://pt.hd4fans.org/](https://pt.hd4fans.org/) |兽站 | ❌ |
| HDArea | [https://hdarea.club/](https://hdarea.club/) |好大 | ❌ |
| HDAtmos | [https://hdatmos.club/](https://hdatmos.club/) |阿童木 | ✔️ |
| HDB | [https://hdbits.org/](https://hdbits.org/) |海德堡 | ❌ |
| HDChina | [https://hdchina.org/](https://hdchina.org/) |瓷器 | ❌ |
| HDCity | [https://hdcity.city/](https://hdcity.city/) |城市 | ❌ |
| HDDolby | [https://www.hddolby.com/](https://www.hddolby.com/) |杜比 | ❌ |
| HDfans | [http://hdfans.org/](http://hdfans.org/) |红豆饭 | ✔️ |
| HDHome | [https://hdhome.org/](https://hdhome.org/) |家园 | ❌ |
| HDPost | [https://pt.hdpost.top/](https://pt.hdpost.top/) |普斯特 | ❌ |
| HDPt | [https://hdpt.xyz/](https://hdpt.xyz/) |明教 | ❌ |
| HDRoute | [http://hdroute.org/](http://hdroute.org/) |不能说 | ❌ |
| HDSky | [https://hdsky.me/](https://hdsky.me) |天空 | ❌ |
| HDTime | [https://hdtime.org/](https://hdtime.org/) |时光 | ❌ |
| HDU | [https://pt.hdupt.com/](https://pt.hdupt.com/) |好多油 | ❌ |
| HDVideo | [https://hdvideo.one/](https://hdvideo.one/) |高清视频 | ❌ |
| HHClub | [https://hhanclub.top/](https://hhanclub.top/) |憨憨，大聪明 | ✔️ |
| HITPT | [https://www.hitpt.com/](https://www.hitpt.com/) |百川 | ❌ |
| ICC | [https://www.icc2022.com/](https://www.icc2022.com/) |冰淇淋 | ❌ |
| IPT | [https://iptorrents.com/](https://iptorrents.com/) |宇宙第一 | ✔️ |
| ITZMX | [https://pt.itzmx.com/](https://pt.itzmx.com/) |PT分享站 | ✔️ |
| KuFei | [https://kufei.org/](https://kufei.org/) |库非 | ✔️ |
| MTeam | [https://kp.m-team.cc/](https://kp.m-team.cc/) |馒头 | ✔️ |
| OKPT | [https://www.okpt.net/](https://www.okpt.net/) |OKPT | ❌ |
| Oshen | [http://www.oshen.win/](http://www.oshen.win/) |欧神 | ❌ |
| OurBits | [https://ourbits.club/](https://ourbits.club/) |我堡 | ❌ |
| Panda | [https://pandapt.net/](https://pandapt.net/) |熊猫站 | ❌ |
| PigGo | [https://piggo.me/](https://piggo.me/) |猪猪网 | ❌ |
| PTcafe | [https://ptcafe.club/](https://ptcafe.club/) |咖啡 | ❌ |
| PTer | [https://pterclub.com/](https://pterclub.com/) |猫站 | ❌ |
| PThome | [https://www.pthome.net/](https://www.pthome.net/) |铂金 | ❌ |
| PTP | [https://passthepopcorn.me/](https://passthepopcorn.me/) |世界第一电影站 | ❌ |
| PTsbao | [https://ptsbao.club/](https://ptsbao.club/) |烧包 | ❌ |
| PTT | [https://www.pttime.org/](https://www.pttime.org/) |时间 | ✔️ |
| RED | [https://redacted.ch/](https://redacted.ch/) |红 | ❌ |
| SC | [https://secret-cinema.pw/](https://secret-cinema.pw/) |小众电影外站 | ❌ |
| SharkPT | [https://sharkpt.net/](https://sharkpt.net/) |鲨鱼PT | ❌ |
| SoulVoice | [https://pt.soulvoice.club/](https://pt.soulvoice.club/) |铃音 | ✔️ |
| SRVFI | [https://srvfi.top/](https://srvfi.top/) |新站 | ❌ |
| Tik | [https://www.cinematik.net/](https://www.cinematik.net/) |题库 | ❌ |
| TJUPT | [https://www.tjupt.org/](https://www.tjupt.org/) |北洋，天大教育站 | ❌ |
| TLFbits | [http://pt.eastgame.org/](http://pt.eastgame.org/) |吐鲁番 | ❌ |
| TorrentLeech | [https://www.torrentleech.org/](https://www.torrentleech.org/) |0day站 | ❌ |
| TTG | [https://totheglory.im/](https://totheglory.im/) |听听歌 | ❌ |
| U2 | [https://u2.dmhy.org/](https://u2.dmhy.org/) |幼儿园 | ❌ |
| UBits | [https://ubits.club/](https://ubits.club/) |国内新站 | ✔️ |
| UltraHD | [https://ultrahd.net/](https://ultrahd.net/) |高清韩剧 | ❌ |
| WT-Sakura | [https://resources.wintersakura.org/](https://resources.wintersakura.org/) |冬樱 | ❌ |
| YDY | [https://pt.hdbd.us/](https://pt.hdbd.us/) |伊甸园 | ❌ |
| ZHUQUE | [https://zhuque.in/](https://zhuque.in/) |朱雀 | ✔️ |
| ZMPT | [https://zmpt.cc/](https://zmpt.cc/) |新站，特色刮削？ | ❌ |
| 海棠 | [https://www.htpt.cc/](https://www.htpt.cc/) |新站，相声等 | ❌ |
| 红叶 | [https://leaves.red/](https://leaves.red/) |新站，特色有声小说 | ❌ |
| 杏林 | [https://xingtan.one/](https://xingtan.one/) |新站，医学等 | ❌ |
