#!/bin/bash

install_add_docker() {
    if command -v apt &>/dev/null || command -v yum &>/dev/null; then
        country=$(curl -s ipinfo.io/country)
        if [ "$country" = "CN" ]; then
            cd ~
            curl -sS -O https://raw.gitmirror.com/kejilion/docker/main/install && chmod +x install
            sh install --mirror Aliyun
            rm -f install
            cat > /etc/docker/daemon.json << EOF
{
    "registry-mirrors": ["https://docker.kejilion.pro"]
}
EOF
        else
            curl -fsSL https://get.docker.com | sh
        fi
        systemctl start docker
        systemctl enable docker
    else
       k install docker docker-compose
       k enable docker
       k start docker
    fi
    sleep 2
}


install_docker() {
    if ! command -v docker &>/dev/null; then
        install_add_docker
    else
        echo "Docker环境已经安装"
    fi
}
