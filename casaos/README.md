# 🐳 Docker 的安装空间转移：

首先确保你已经在装入了外接硬盘，并在casaos里添加为Storage1的外挂空间

<p align="center">
    <img src="/casaos/casaos.png" alt="Logo" width="600" />

使用命令把脚本下载到 /usr/bin/ 这目录下
```
sudo curl -o /usr/bin/casaos_docker_reconfig.sh https://gh-proxy.com/raw.githubusercontent.com/skywrt/Note/main/casaos/casaos_docker_reconfig.sh
```

执行命令，给脚本授权
```
sudo chmod +x /usr/bin/casaos_docker_reconfig.sh
```

执行命令
```
sudo casaos_docker_reconfig.sh
```

请执行以下命令验证新配置已生效
```
docker info | grep 'Docker Root Dir'
```
