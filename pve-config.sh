#!/bin/bash
# PVE 配置管理脚本
# 必须使用 root 执行

show_menu() {
    clear
    echo "====================================="
    echo "     Proxmox VE 配置管理脚本        "
    echo "====================================="
    echo "1. PVE 存储扩容"
    echo "2. 系统源/仓库源替换"
    echo "3. 查看当前 PVE 版本"
    echo "4. 内核版本锁定"
    echo "5. 开启 SR-IOV 核显虚拟化"
    echo "6. 查看 SR-IOV 核显虚拟化状态"
    echo "7. 一键执行所有配置"
    echo "0. 退出"
    echo
    read -p "请输入选项数字: " choice
    case $choice in
        1) pve_expand ;;
        2) pve_repo ;;
        3) show_pve_version ;;
        4) kernel_lock ;;
        5) sriov_config ;;
        6) check_sriov_status ;;
        7) all_in_one ;;
        0) exit 0 ;;
        *) echo "无效输入"; sleep 1; show_menu ;;
    esac
}

pve_expand() {
    echo "正在执行存储扩容..."
    read -p "警告：此操作将删除 data 逻辑卷！确认继续？[y/N] " confirm
    [[ $confirm != [yY] ]] && return
    
    if ! lvremove pve/data -y; then
        echo "错误：逻辑卷删除失败！"
        exit 1
    fi
    
    if ! lvextend -l +100%FREE -r pve/root; then
        echo "错误：逻辑卷扩展失败！"
        exit 1
    fi
    
    resize2fs /dev/mapper/pve-root
    echo "存储扩容完成！"
    read -p "按回车返回主菜单..."
    show_menu
}

pve_repo() {
    echo "正在替换系统源..."
    # Debian 源
    sed -i.bak 's|^deb http://ftp.debian.org|deb https://mirrors.ustc.edu.cn|g' /etc/apt/sources.list
    sed -i 's|^deb http://security.debian.org|deb https://mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list
    
    # Proxmox 源
    echo 'deb https://mirrors.ustc.edu.cn/proxmox/debian/pve bookworm pve-no-subscription' > /etc/apt/sources.list.d/pve-no-subscription.list
    
    # Ceph 源
    echo 'deb https://mirrors.ustc.edu.cn/proxmox/debian/ceph-quincy bookworm no-subscription' > /etc/apt/sources.list.d/ceph.list
    
    # CT模板源
    sed -i.bak 's|http://download.proxmox.com|https://mirrors.ustc.edu.cn/proxmox|g' /usr/share/perl5/PVE/APLInfo.pm
    systemctl restart pvedaemon
    
    # 注释企业源
    sed -i.bak 's/^/#/g' /etc/apt/sources.list.d/pve-enterprise.list
    
    # 删除订阅弹窗
    sed -i.backup -z "s/res === null || res === undefined || \!res || res\n\t\t\t.data.status.toLowerCase() \!== 'active'/false/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js
    systemctl restart pveproxy.service
    
    echo "源替换完成，建议重启系统！"
    read -p "是否立即重启？[y/N] " reboot_choice
    [[ $reboot_choice == [yY] ]] && reboot
    show_menu
}

show_pve_version() {
    echo "当前 PVE 版本信息："
    pveversion
    read -p "按回车返回主菜单..."
    show_menu
}

kernel_lock() {
    echo "正在锁定内核版本..."
    current_kernel=$(uname -r)
    echo "当前内核版本: $current_kernel"
    
    # 安装指定内核
    apt install pve-kernel-6.8.12-4-pve -y
    
    # 更新 GRUB
    update-grub
    
    # 锁定内核
    proxmox-boot-tool kernel pin 6.8.12-4-pve
    
    # 安装内核头文件
    apt install pve-headers-6.8.12-4-pve -y
    
    echo "内核锁定完成，需要重启生效！"
    read -p "是否立即重启？[y/N] " reboot_choice
    [[ $reboot_choice == [yY] ]] && reboot
    show_menu
}

sriov_config() {
    echo "正在配置 SR-IOV 核显虚拟化..."
    
    # 提示用户输入 VF 数量，最大值为 7
    echo "请输入需要开启的 VF 数量（最大值为 7）："
    read -p "VF 数量（1-7）： " vf_num
    if ! [[ "$vf_num" =~ ^[1-7]$ ]]; then
        echo "错误：请输入 1 到 7 之间的数字！"
        return
    fi
    
    # 修改 GRUB 参数，固定 i915.max_vfs=7
    sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT/c\GRUB_CMDLINE_LINUX_DEFAULT="quiet intel_iommu=on iommu=pt pcie_acs_override=downstream i915.enable_guc=3 i915.max_vfs=7"' /etc/default/grub
    
    # 加载模块
    echo -e "vfio\nvfio_iommu_type1\nvfio_pci\nvfio_virqfd" | tee -a /etc/modules
    
    # 更新引导
    update-grub
    update-initramfs -u -k all
    
    # 安装依赖
    apt-get install --no-install-recommends git mokutil sysfsutils -y
    apt install --reinstall dkms -y
    
    # 编译安装 DKMS 模块
    KERNEL=$(uname -r)
    KERNEL=${KERNEL%-pve}
    git clone https://github.com/strongtz/i915-sriov-dkms.git
    cd i915-sriov-dkms/
    sed -i 's/"@_PKGBASE@"/"i915-sriov-dkms"/g' dkms.conf
    sed -i "s/^PACKAGE_VERSION=.*/PACKAGE_VERSION=\"$KERNEL\"/" dkms.conf
    dkms add .
    dkms install -m i915-sriov-dkms -v $KERNEL -k $(uname -r) --force -j 1
    
    # 配置 VF 数量
    echo "devices/pci0000:00/0000:00:02.0/sriov_numvfs = $vf_num" > /etc/sysfs.conf
    
    echo "SR-IOV 配置完成，需要重启生效！"
    read -p "是否立即重启？[y/N] " reboot_choice
    [[ $reboot_choice == [yY] ]] && reboot
    show_menu
}

check_sriov_status() {
    echo "当前 SR-IOV 核显虚拟化状态："
    lspci | grep VGA
    read -p "按回车返回主菜单..."
    show_menu
}

all_in_one() {
    echo "正在执行全流程配置..."
    pve_expand
    pve_repo
    kernel_lock
    sriov_config
    echo "所有配置已完成！"
    reboot
}

# 检查 root 权限
if [[ $EUID -ne 0 ]]; then
    echo "错误：必须使用 root 用户执行此脚本！" 
    exit 1
fi

show_menu
