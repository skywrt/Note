#!/bin/bash

# 2025022-v1.6

# 主菜单
main_menu() {
    clear
    echo -e "\033[1;34m======================================\033[0m"
    echo -e "\033[1;36m欢迎使用 灵云集 ProxmoxOS 系统 - v1.7\033[0m"
    echo -e "\033[1;34m======================================\033[0m"
    echo -e "\n\033[1;32m[1]\033[0m 安装 macOS"
    echo -e "\033[1;32m[2]\033[0m 安装 Windows"
    echo -e "\033[1;32m[3]\033[0m 安装 Liunx"
    echo -e "\033[1;32m[4]\033[0m 安装 iKuai8"
    echo -e "\033[1;32m[5]\033[0m 安装 OpenWrt iStoreOS"
    echo -e "\033[1;32m[6]\033[0m 安装 DSM 群晖"
    echo -e "\033[1;32m[7]\033[0m 安装 fnOS 飞牛"
    echo -e "\033[1;32m[8]\033[0m 安装 Deepin Desktop 深度系统"
    echo -e "\033[1;32m[9]\033[0m 安装 Android x86 & TV 系统"
    echo -e "\033[1;32m[10]\033[0m 灵云集工具箱"
    echo -e "\033[1;31m[0]\033[0m 退出程序"

    echo -e "\n\033[1;33m更多资源请访问: \033[1;34mhttps://vmicloud.top/\033[0m"
    echo -e "\n请选择一个选项"

    while true; do
        read -p "请输入选项: " menu_choice

        case $menu_choice in
            1)
                install_macOS  # 跳转到安装macOS的功能
                ;;
            2)
                install_windows  # 跳转到安装Windows的功能
                ;;
            3)
                install_liunx  # 跳转到安装Liunx的功能
                ;;
            4)
                install_ikuai  # 跳转到安装iKuai8的功能
                ;;
            5)
                install_openwrt  # 跳转到安装OpenWrt_iStoreOS的功能
                ;;
            6)
                install_dsm  # 跳转到安装DSM群晖的功能
                ;;
            7)
                install_fnos  # 跳转到安装fnOS飞牛的功能
                ;;
            8)
                install_deepin  # 跳转到安装deepin深度系统的功能
                ;;
            9)
                install_android  # 跳转到安装Android系统的功能
                ;;
            10)
                cloud_tools_menu  # 跳转到灵云集工具箱
                ;;
            0)
                echo -e "\n\033[1;31m退出程序...\033[0m"
                exit 0
                ;;
            *)
                echo -e "\033[1;31m无效选项，请重新选择。\033[0m"
                ;;
        esac
    done
}

# 灵云集工具箱子菜单
cloud_tools_menu() {
    clear
    echo "灵云集工具箱"
    echo "1. 恢复已下载、备份或已上传的模板"
    echo "2. 开启硬件直通"
    echo "3. 下载核显 ROM"
    echo "4. 合并 local-lvm 分区"
    echo "5. 关闭每次登录后弹出的订阅窗口"
    echo "b. 返回主菜单"
    echo "0. 退出程序"

    while true; do
        read -p "请选择一个选项: " choice

        case $choice in
            1)
                restore_template
                break
                ;;
            2)
                enable_passthrough
                break
                ;;
            3)
                download_igpu_rom
                break
                ;;
            4)
                local_lvm
                break
                ;;
            5)
                local_dy
                break
                ;;
            b)
                main_menu
                break
                ;;
            0)
                echo "退出程序"
                exit 0
                ;;
            *)
                echo "无效选项，请重新选择."
                ;;
        esac
    done
}

# 安装macOS函数（示例）
install_macOS() {
    clear
# 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 提供系统版本选项
while true; do
echo "请选择 macOS Recovery 版本（E5/E3 V2版本的处理器，请安装10.15与10.14。暂不支持J6413、J4125，其他奔腾赛扬处理器自行测试）"
echo "1. macOS Mojave 10.14"
echo "2. macOS Catalina 10.15"
echo "3. macOS Big Sur 11"
echo "4. macOS Monterey 12"
echo "5. macOS Ventura 13"
echo "6. macOS Sonoma 14"
echo "7. macOS Sequoia 15"
echo "b. 返回主菜单"
echo "0. 退出程序"
read -p "请输入序号后按Enter: " SYSTEM_CHOICE

# 版本对应的文件名、下载地址和MD5
case $SYSTEM_CHOICE in
    1)
        FILE_NAME="vzdump-qemu-107-2024_12_24-21_16_04.vma.zst" # 1. macOS Mojave 10.14
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/GsMwrVe6kxEw.zst"
        EXPECTED_MD5="9da77293983aebbe3ec3daa9adcff79d"
        break
        ;;
    2)
        FILE_NAME="vzdump-qemu-106-2024_12_24-21_14_40.vma.zst" # 2. macOS Catalina 10.15
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/99aph92Z5EzV.zst"
        EXPECTED_MD5="cfadb73a7fb2215923feb4772234984b"
        break
        ;;
    3)
        FILE_NAME="vzdump-qemu-105-2024_12_24-21_13_40.vma.zst" # 3. macOS Big Sur 11
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/dTRhehHFiQpj.zst"
        EXPECTED_MD5="ba5493311f1b265412b529adfa759a63"
        break
        ;;
    4)
        FILE_NAME="vzdump-qemu-104-2024_12_24-21_12_40.vma.zst" # 4. macOS Monterey 12
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/RNvR25dtf7AK.zst"
        EXPECTED_MD5="0c24b54869c9fe3ab566391bac1a329d"
        break
        ;;
    5)
        FILE_NAME="vzdump-qemu-103-2024_12_24-21_11_38.vma.zst" # 5. macOS Ventura 13
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/CbGFwgAnh8Ub.zst"
        EXPECTED_MD5="32a6cdb38c987be273c5e1d7a7b808dc"
        break
        ;;
    6)
        FILE_NAME="vzdump-qemu-102-2024_12_24-21_10_23.vma.zst" # 6. macOS Sonoma 14
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/bFeBydnKbLhM.zst"
        EXPECTED_MD5="7138a168115f335f31c7e8ca0e182ef4"
        break
        ;;
    7)
        FILE_NAME="vzdump-qemu-101-2024_12_24-19_57_48.vma.zst" # 7. macOS Sequoia 15
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/DmhawbR8JxJM.zst"
        EXPECTED_MD5="0a6b9e61de201ea04c990ed6d361b97b"
        break
        ;;
    b)
        main_menu
        ;;
    0)
        echo "退出程序"
            exit 0
        ;;     
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证MD5
echo "验证MD5..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5校验失败，正在进入 /var/lib/vz/dump/ 目录并删除文件 $FILE_NAME ..."
    # 进入文件夹并删除文件
    cd "$DOWNLOAD_DIR" && rm -f "$FILE_NAME"
    echo "已删除文件 $FILE_NAME，请重新运行程序。"
    exit 1
else
    echo "MD5校验成功，继续恢复操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 提示用户选择 CPU 类型，并验证输入
while true; do
    echo "请选择本机 CPU 类型（选择错误会导致虚拟机无法启动，请正确选择）："
    echo "1. Intel 11代及以下 CPU（也适用E5 E3与其他Intel）"
    echo "2. Intel 12-14代 CPU（也适用于某些第10-11代）"
    echo "3. AMD CPU"
    read -p "请输入1、2或3后按Enter: " CPU_CHOICE

    # 获取配置文件路径
    VMID_CONF_PATH="/etc/pve/qemu-server/$NEXT_VMID.conf"

    case $CPU_CHOICE in
        1)
            # 英特尔11代以下的CPU，不执行任何操作
            echo "选择了1. 配置已存在，不进行任何操作。"
            break
            ;;
        2)
            # 英特尔12-14代CPU，修改配置文件
            echo "选择了2. 修改配置文件..."
            if [ -f "$VMID_CONF_PATH" ]; then
                sed -i 's/args: .*/args: -device isa-applesmc,osk="ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc" -smbios type=2 -device qemu-xhci -device usb-kbd -device usb-tablet -global nec-usb-xhci.msi=off -global ICH9-LPC.acpi-pci-hotplug-with-bridge-support=off -cpu Cascadelake-Server,kvm=on,vendor=GenuineIntel,+kvm_pv_unhalt,+kvm_pv_eoi,+hypervisor,+invtsc/' "$VMID_CONF_PATH"
                if [ $? -eq 0 ]; then
                    echo "配置完成，请启动虚拟机 ID: $NEXT_VMID。"
                else
                    echo "配置失败，请重试。"
                fi
                break
            else
                echo "配置文件 $VMID_CONF_PATH 不存在，恢复失败。"
                exit 1
            fi
            ;;
        3)
            # AMD处理器，修改配置文件
            echo "选择了3. 修改配置文件..."
            if [ -f "$VMID_CONF_PATH" ]; then
                sed -i 's/args: .*/args: -device isa-applesmc,osk="ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc" -smbios type=2 -device qemu-xhci -device usb-kbd -device usb-tablet -global nec-usb-xhci.msi=off -global ICH9-LPC.acpi-pci-hotplug-with-bridge-support=off -cpu Cascadelake-Server,vendor=GenuineIntel,+invtsc,-pcid,-hle,-rtm,-avx512f,-avx512dq,-avx512cd,-avx512bw,-avx512vl,-avx512vnni,kvm=on,vmware-cpuid-freq=on/' "$VMID_CONF_PATH"
                if [ $? -eq 0 ]; then
                    echo "配置完成，虚拟机 ID: $NEXT_VMID。"
                else
                    echo "配置失败，请重试。"
                fi
                break
            else
                echo "配置文件 $VMID_CONF_PATH 不存在，恢复失败，请检查并重试。"
                exit 1
            fi
            ;;
        *)
            echo "无效的选择，请输入1、2或3。"
            ;;
    esac
done

# 询问用户是否启动恢复成功的虚拟机
echo "请选择下一步操作："
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done
        main_menu
}



# 安装Windows函数
install_windows() {
    clear
    # 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 提供系统版本选项
while true; do
echo "请选择 Windows 系统版本:"
echo "1. Windows XP x86"
echo "2. Windows 7 x64"
echo "3. Windows 8.1 x64"
echo "4. Windows 10 22H2 x64"
echo "5. Windows 11 23H2 x64"
echo "6. Windows 11 LTSC 24H2 x64"
echo "7. Windows Server 2022 x64"
echo "b. 返回主菜单"
echo "0. 退出程序"
read -p "请输入序号后按Enter: " SYSTEM_CHOICE

# 版本对应的文件名、下载地址和MD5
case $SYSTEM_CHOICE in
    1)
        FILE_NAME="vzdump-qemu-132-2024_12_21-18_45_18.vma.zst" # Windows XP x86
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/bLdcNHA89y9v.zst"
        EXPECTED_MD5="b26945a0c8447ae00457aa9d94d21dcb"
        break
        ;;
    2)
        FILE_NAME="vzdump-qemu-131-2024_12_21-18_42_42.vma.zst" # Windows 7 x64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/Vo29Al7MjkoD.zst"
        EXPECTED_MD5="20fdc75abb53596274219e16fb0d86d6"
        break
        ;;
    3)
        FILE_NAME="vzdump-qemu-129-2024_12_21-18_38_38.vma.zst" # Windows 8.1 x64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/JzR8gjJRphvz.zst"
        EXPECTED_MD5="8f7e91c3b854fa6019f191782de0edc3"
        break
        ;;
    4)
        FILE_NAME="vzdump-qemu-120-2024_12_21-14_44_11.vma.zst" # Windows 10 22H2 x64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/tELJF8iGsit7.zst"
        EXPECTED_MD5="9cb4e8df05f5d4e5fceb9492e47bc503"
        break
        ;;
    5)
        FILE_NAME="vzdump-qemu-108-2024_12_21-20_45_48.vma.zst" # Windows 11 23H2 x64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/MK25D6keRJte.zst"
        EXPECTED_MD5="ada62409291bfef3f7980bcbbdf3f744"
        break
        ;;
    6)
        FILE_NAME="vzdump-qemu-114-2025_01_17-16_34_01.vma.zst" # Windows 11 24H2 x64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/0G2tVVORO82N.zst"
        EXPECTED_MD5="379ca452df3598e6d41c2d0926e8acfe"
        break
        ;;
    7)
        FILE_NAME="vzdump-qemu-130-2024_12_21-18_40_34.vma.zst" # Windows Server 2022 x64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/wM510XaXFu3d.zst"
        EXPECTED_MD5="e401f01e1f1eb2d22c4a62456342f711"
        break
        ;;
    b)
        main_menu
        ;;
    0)
        echo "退出程序"
            exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证MD5
echo "验证MD5..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5校验失败，正在进入 /var/lib/vz/dump/ 目录并删除文件 $FILE_NAME ..."
    # 进入文件夹并删除文件
    cd "$DOWNLOAD_DIR" && rm -f "$FILE_NAME"
    echo "已删除文件 $FILE_NAME，请重新运行程序。"
    exit 1
else
    echo "MD5校验成功，继续恢复操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，请选择下一步操作："
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done
    main_menu
}





# 安Android函数
install_android() {
    clear
    # 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 提供系统版本选项
while true; do
echo "请选择 Android 系统版本:"
echo "1. Android x86 9.0"
echo "2. Android x86 TV 9.0"
echo "b. 返回主菜单"
echo "0. 退出程序"
read -p "请输入序号后按Enter: " SYSTEM_CHOICE

# 版本对应的文件名、下载地址和MD5
case $SYSTEM_CHOICE in
    1)
        FILE_NAME="vzdump-qemu-103-2025_01_21-23_34_04.vma.zst" # Android x86 9.0
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/PBXrAo2wt9oq.zst"
        EXPECTED_MD5="3f8c2b7943d7cbbebf851acad587b9f5"
        break
        ;;
    2)
        FILE_NAME="vzdump-qemu-102-2025_01_21-22_50_02.vma.zst" # Android TV9 x86
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/CnU6ytmy8ftl.zst"
        EXPECTED_MD5="40d615a687c82079504f3ff1f7bbdea5"
        break
        ;;
    b)
        main_menu
        ;;
    0)
        echo "退出程序"
            exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证MD5
echo "验证MD5..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5校验失败，正在进入 /var/lib/vz/dump/ 目录并删除文件 $FILE_NAME ..."
    # 进入文件夹并删除文件
    cd "$DOWNLOAD_DIR" && rm -f "$FILE_NAME"
    echo "已删除文件 $FILE_NAME，请重新运行程序。"
    exit 1
else
    echo "MD5校验成功，继续恢复操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，请选择下一步操作："
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done
    main_menu
}


# 安装Liunx函数
install_liunx() {
    clear
    # 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 提供系统版本选项
while true; do
echo "请选择 Liunx 系统版本:"
echo "1.  Ubuntu Desktop 24"
echo "2.  Ubuntu Desktop 22"
echo "3.  Ubuntu Server 24"
echo "4.  Ubuntu Server 22"
echo "5.  CentOS Stream 10"
echo "6.  CentOS Stream 9"
echo "7.  CentOS 8"
echo "8.  CentOS 7"
echo "9.  Debian 12"
echo "10. Debian 11"
echo "11. Debian 10"
echo "12. Debian 9"
echo "13. kali linux 2024.4 64"
echo "b.  返回主菜单"
echo "0.  退出程序"
read -p "请输入序号后按Enter: " SYSTEM_CHOICE

# 版本对应的文件名、下载地址和MD5
case $SYSTEM_CHOICE in
    1)
        FILE_NAME="vzdump-qemu-103-2025_01_13-23_03_00.vma.zst" # Ubuntu_Desktop_24.04.1_LTS
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/q375rKE8WRiB.zst"
        EXPECTED_MD5="99739f251aa0f1b6e5462fc5c01e00c0"
        break
        ;;
    2)
        FILE_NAME="vzdump-qemu-100-2025_01_15-22_44_16.vma.zst" # Ubuntu_Desktop_22.04.5
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/mt7SqViXpXYS.zst"
        EXPECTED_MD5="13a19cd319e0d162a2c1b25f463486ff"
        break
        ;;
    3)
        FILE_NAME="vzdump-qemu-102-2025_01_13-23_02_12.vma.zst" # Ubuntu_Server_24.04.1_LTS
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/cMl8RhshtWeY.zst"
        EXPECTED_MD5="9cc8213bb519e0270a65e663e1891140"
        break
        ;;
    4)
        FILE_NAME="vzdump-qemu-101-2025_01_15-22_45_40.vma.zst" # Ubuntu_Server_22.04.5
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/oMaJfO0dVgqc.zst"
        EXPECTED_MD5="c84ad28e6e4b467ac0d5b52b50f5449c"
        break
        ;;
    5)
        FILE_NAME="vzdump-qemu-105-2025_01_14-18_47_47.vma.zst" # CentOS-Stream-10-20250106.0-x86_64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/TqCxo9Kl8LNL.zst"
        EXPECTED_MD5="45fceca2751467c923608a6c7a1b0e72"
        break
        ;;
    6)
        FILE_NAME="vzdump-qemu-104-2025_01_14-18_48_32.vma.zst" # CentOS-Stream-9-20250106.0-x86_64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/gLGWcneWQsso.zst"
        EXPECTED_MD5="73cef2d92d0918e7d44581a2a0a2f275"
        break
        ;;
    7)
        FILE_NAME="vzdump-qemu-106-2025_01_14-18_46_40.vma.zst" # CentOS-8.5.2111-x86_64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/yFoiFOnXa5Un.zst"
        EXPECTED_MD5="a500c102c148e3f35480df0e092ed078"
        break
        ;;
    8)
        FILE_NAME="vzdump-qemu-107-2025_01_14-18_46_08.vma.zst" # CentOS-7-x86_64-Minimal-2207-02
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/dBNm6iAWbj5z.zst"
        EXPECTED_MD5="d3a9d98a41fbfa7dec7f2c63001f5116"
        break
        ;;
    9)
        FILE_NAME="vzdump-qemu-111-2025_01_15-17_39_44.vma.zst" # Debian-12.9.0
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/u6MOZMWJFoCP.zst"
        EXPECTED_MD5="74b642bd7968e1fdf5ce1d85cc3b4708"
        break
        ;;
    10)
        FILE_NAME="vzdump-qemu-110-2025_01_15-17_32_59.vma.zst" # Debian-11.11.0
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/pYNWi2LUMnPT.zst"
        EXPECTED_MD5="2a248dbd687e0e4647ffb1c3e42f834d"
        break
        ;;
    11)
        FILE_NAME="vzdump-qemu-109-2025_01_15-17_29_36.vma.zst" # Debian-10.13.0
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/agIQATSmhIf3.zst"
        EXPECTED_MD5="80d40e9bbbf185e05efafcdd1ab98a13"
        break
        ;;
    12)
        FILE_NAME="vzdump-qemu-108-2025_01_15-17_28_38.vma.zst" # Debian-9.13.0
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/Sb6j4bwUs0nD.zst"
        EXPECTED_MD5="8062b7fab89e846c0f1c14d08346c636"
        break
        ;;
    13)
        FILE_NAME="vzdump-qemu-115-2025_01_17-17_41_30.vma.zst" # kali linux 2024.4 64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/2QjCdl7LyoOb.zst"
        EXPECTED_MD5="66e8a53a05a0f90b3e20436bcdc3e431"
        break
        ;;
    b)
        main_menu
        ;;
    0)
        echo "退出程序"
            exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证MD5
echo "验证MD5..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5校验失败，正在进入 /var/lib/vz/dump/ 目录并删除文件 $FILE_NAME ..."
    # 进入文件夹并删除文件
    cd "$DOWNLOAD_DIR" && rm -f "$FILE_NAME"
    echo "已删除文件 $FILE_NAME，请重新运行程序。"
    exit 1
else
    echo "MD5校验成功，继续恢复操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助，请选择下一步操作："
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done
    main_menu
}





# 安装iKuai8函数
install_ikuai() {
    clear
# 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 固定 iKuai8 的参数
FILE_NAME="vzdump-qemu-102-2025_01_07-20_12_35.vma.zst"
DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/bMQZE1EeotPe.zst"
EXPECTED_MD5="a6de34ecc32ffa7befe30927af7bf571"

# 提示用户当前操作
echo "正在准备下载 iKuai8 系统文件..."
echo "文件名: $FILE_NAME"
echo "目标目录: $DOWNLOAD_DIR"

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证 MD5
echo "正在验证 MD5 校验值..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5 校验失败，正在删除文件 $FILE_NAME ..."
    rm -f "$DOWNLOAD_DIR$FILE_NAME"
    echo "文件已删除，请重新运行程序。"
    exit 1
else
    echo "MD5 校验成功，继续后续操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助，请选择下一步操作"
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择。"
        ;;
esac
done
    main_menu
}



# 安装OpenWrt_iStoreOS函数
install_openwrt() {
    clear
# 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 提供系统版本选项
while true; do
echo "请选择 OpenWrt 或 iStoreOS 系统版本:"
echo "1. OpenWrt x86 64"
echo "2. iStoreOS 22.03.7 x86 64"
echo "b. 返回主菜单"
echo "0. 退出程序"
read -p "请输入序号后按Enter: " SYSTEM_CHOICE

# 版本对应的文件名、下载地址和MD5
case $SYSTEM_CHOICE in
    1)
        FILE_NAME="vzdump-qemu-103-2025_01_07-21_19_26.vma.zst" # OpenWrt_x86_64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/sTTgxdDZSKR1.zst"
        EXPECTED_MD5="f3ec9e99ddf84e15abd3994fbad99faf"
        break
        ;;
    2)
        FILE_NAME="vzdump-qemu-112-2025_01_17-14_06_18.vma.zst" # iStoreOS_22.03.7_x86_64
        DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/MgTMa4vu3Q0C.zst"
        EXPECTED_MD5="417d790d66c098d681647c3f4dbc17a4"
        break
        ;;
    b)
        main_menu
        ;;
    0)
        echo "退出程序"
            exit 0
        ;;
    *)
        echo "无效选项，请重新选择."
        ;;
esac
done

# 提示用户当前操作
echo "正在准备下载 OpenWrt 系统文件..."
echo "文件名: $FILE_NAME"
echo "目标目录: $DOWNLOAD_DIR"

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证 MD5
echo "正在验证 MD5 校验值..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5 校验失败，正在删除文件 $FILE_NAME ..."
    rm -f "$DOWNLOAD_DIR$FILE_NAME"
    echo "文件已删除，请重新运行程序。"
    exit 1
else
    echo "MD5 校验成功，继续后续操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助，请选择下一步操作"
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择。"
        ;;
esac
done
    main_menu
}




# 安装 DSM 群晖函数
install_dsm() {
    clear
# 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 固定 DSM 群晖系统文件的参数
FILE_NAME="vzdump-qemu-104-2025_01_07-23_37_23.vma.zst"
DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/T5XyuTyJmRDc.zst"
EXPECTED_MD5="c45854e549488ede1cc8458b08d6570b"

# 提示用户当前操作
echo "正在准备下载DSM 群晖系统文件..."
echo "文件名: $FILE_NAME"
echo "目标目录: $DOWNLOAD_DIR"

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证 MD5
echo "正在验证 MD5 校验值..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5 校验失败，正在删除文件 $FILE_NAME ..."
    rm -f "$DOWNLOAD_DIR$FILE_NAME"
    echo "文件已删除，请重新运行程序。"
    exit 1
else
    echo "MD5 校验成功，继续后续操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助，请选择下一步操作"
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择。"
        ;;
esac
done
    main_menu
}





# 安装 fnOS 飞牛系统晖函数
install_fnos() {
    clear
# 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 固定 fnOS 飞牛系统文件的参数
FILE_NAME="vzdump-qemu-101-2025_01_07-19_40_02.vma.zst"
DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/S7EaZJ0gSqF1.zst"
EXPECTED_MD5="eafbb28d718070f173c5042a48b611e9"

# 提示用户当前操作
echo "正在准备下载 fnOS 飞牛系统文件..."
echo "文件名: $FILE_NAME"
echo "目标目录: $DOWNLOAD_DIR"

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证 MD5
echo "正在验证 MD5 校验值..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5 校验失败，正在删除文件 $FILE_NAME ..."
    rm -f "$DOWNLOAD_DIR$FILE_NAME"
    echo "文件已删除，请重新运行程序。"
    exit 1
else
    echo "MD5 校验成功，继续后续操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助，请选择下一步操作"
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择。"
        ;;
esac
done
    main_menu
}


# 安装  Deepin Desktop 25 x64 深度系统函数
install_deepin() {
    clear
# 设置文件存储路径
DOWNLOAD_DIR="/var/lib/vz/dump/"

# 固定 fnOS 飞牛系统文件的参数
FILE_NAME="vzdump-qemu-117-2025_01_19-18_39_01.vma.zst"
DOWNLOAD_URL="https://pve.vmicloud.top:8889/down/z8paw6MKk97I.zst"
EXPECTED_MD5="b56df48a9d46293c54a16c79e9765ec2"

# 提示用户当前操作
echo "正在准备下载 Deepin Desktop 25 x64 深度系统文件..."
echo "文件名: $FILE_NAME"
echo "目标目录: $DOWNLOAD_DIR"

# 检查文件是否已存在
if [ -f "$DOWNLOAD_DIR$FILE_NAME" ]; then
    echo "文件 $FILE_NAME 已经存在，跳过下载步骤。"
else
    # 使用 wget 下载文件
    wget --progress=bar:force:noscroll --no-check-certificate --content-disposition -P "$DOWNLOAD_DIR" "$DOWNLOAD_URL"
    
    # 检查是否下载成功
    if [ $? -eq 0 ]; then
        echo "文件下载成功，文件名是：$FILE_NAME"
    else
        echo "文件下载失败，请重试。"
        exit 1
    fi
fi

# 验证 MD5
echo "正在验证 MD5 校验值..."
DOWNLOAD_MD5=$(md5sum "$DOWNLOAD_DIR$FILE_NAME" | awk '{ print $1 }')
if [ "$DOWNLOAD_MD5" != "$EXPECTED_MD5" ]; then
    echo "MD5 校验失败，正在删除文件 $FILE_NAME ..."
    rm -f "$DOWNLOAD_DIR$FILE_NAME"
    echo "文件已删除，请重新运行程序。"
    exit 1
else
    echo "MD5 校验成功，继续后续操作。"
fi

# 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

# 获取当前最大的 LXC 容器 ID
LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

# 计算下一个虚拟机 ID
NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
NEXT_VMID=$((NEXT_VMID + 1))

# 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
    NEXT_VMID=$((NEXT_VMID + 1))
done

# 确保虚拟机 ID 至少为 100
if [ $NEXT_VMID -lt 100 ]; then
    NEXT_VMID=100
fi

echo "将使用虚拟机 ID: $NEXT_VMID"

# 检查存储类型，判断使用 local 或 local-lvm
STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

# 确定存储类型是否是 local-lvm
if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
    STORAGE="local-lvm"
else
    STORAGE="local"
fi

# 自动恢复虚拟机到适当的存储
echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
qmrestore "$DOWNLOAD_DIR$FILE_NAME" $NEXT_VMID --storage $STORAGE

# 询问用户是否启动恢复成功的虚拟机
echo "虚拟机 ID: $NEXT_VMID 配置成功，非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助，请选择下一步操作"
echo "1. 启动虚拟机 ID: $NEXT_VMID"
echo "2. 稍后启动 ID: $NEXT_VMID"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入序号后按Enter: " NEXT_STEP

case $NEXT_STEP in
    1)
        # 启动虚拟机
        qm start $NEXT_VMID
        if [ $? -eq 0 ]; then
            echo "虚拟机 ID: $NEXT_VMID 已成功启动。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        else
            echo "虚拟机 ID: $NEXT_VMID 启动失败。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        fi
        exit 0
        ;;
    2)
        echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    b)
        main_menu
        break
        ;;
    0)
        echo "退出程序。非常重要 - 依次进入 - 虚拟机 - 概要 - 备注 - 查看使用帮助。"
        exit 0
        ;;
    *)
        echo "无效选项，请重新选择。"
        ;;
esac
done
    main_menu
}





# 恢复已下载、备份或已上传的模板
restore_template() {
    clear
    # 设置备份文件所在目录
    BACKUP_DIR="/var/lib/vz/dump"

    # 获取当前最大的虚拟机 ID
    VMID=$(qm list | awk 'NR > 1 {print $1}' | sort -n | tail -n 1)

    # 确保虚拟机 ID 合法，且大于 100
    NEXT_VMID=$((VMID + 1))
    if [ $NEXT_VMID -lt 100 ]; then
        NEXT_VMID=100
    fi

    # 显示备份目录中的所有文件，并为每个文件分配编号
    echo "备份文件列表："
    FILES=($BACKUP_DIR/*)
    index=1
    for file in "${FILES[@]}"; do
        # 获取文件名并去除路径
        filename=$(basename "$file")
        # 只显示实际的文件，不显示目录
        if [ -f "$file" ]; then
            echo "$index. $filename"
            ((index++))
        fi
    done
    echo "0. 退出程序"
    echo "b. 返回主菜单"

    while true; do
        # 让用户选择备份文件或执行其他操作
        read -p "请输入备份文件的编号（例如：1、2、3），或输入0退出程序，输入b返回主菜单：" CHOICE

        # 根据用户选择进行处理
        case $CHOICE in
            0)
                echo "退出程序"
                exit 0
                ;;
            b|B)
                echo "返回主菜单"
                # 这里可以调用主菜单的函数或代码
                main_menu
                break
                ;;
            *)
                # 检查用户选择是否有效
                if [ -z "$CHOICE" ] || [ "$CHOICE" -le 0 ] || [ "$CHOICE" -gt "${#FILES[@]}" ]; then
                    echo "无效选择，请输入一个有效的编号。"
                    continue  # 错误选择后继续循环，重新输入
                fi

                # 获取选择的文件路径
                SELECTED_FILE="${FILES[$CHOICE-1]}"

                # 检查选中的文件是否存在
                if [ ! -f "$SELECTED_FILE" ]; then
                    echo "文件不存在，请重新选择。"
                else
                    # 如果文件存在，执行恢复操作
                    echo "正在恢复：$SELECTED_FILE"

                    # 获取当前最大的虚拟机 ID (仅获取 QEMU 虚拟机 ID)
                    VMID_LIST=$(qm list | awk 'NR > 1 {print $1}' | sort -n)

                    # 获取当前最大的 LXC 容器 ID
                    LXC_ID_LIST=$(pct list | awk 'NR > 1 {print $1}' | sort -n)

                    # 计算下一个虚拟机 ID
                    NEXT_VMID=$(echo "$VMID_LIST" | tail -n 1)
                    NEXT_VMID=$((NEXT_VMID + 1))

                    # 确保虚拟机 ID 不与 LXC 容器的 ID 冲突
                    while echo "$LXC_ID_LIST" | grep -qw "$NEXT_VMID"; do
                    NEXT_VMID=$((NEXT_VMID + 1))
                    done

                    # 确保虚拟机 ID 至少为 100
                    if [ $NEXT_VMID -lt 100 ]; then
                    NEXT_VMID=100
                    fi

                    echo "将使用虚拟机 ID: $NEXT_VMID"

                    # 检查存储类型，判断使用 local 或 local-lvm
                    STORAGE_TYPE=$(pvesh get /nodes/$(hostname)/storage)

                    # 确定存储类型是否是 local-lvm
                    if echo "$STORAGE_TYPE" | grep -q "local-lvm"; then
                        STORAGE="local-lvm"
                    else
                        STORAGE="local"
                    fi

                    # 自动恢复虚拟机到适当的存储
                    echo "正在恢复虚拟机 ID: $NEXT_VMID，存储选择：$STORAGE"
                    qmrestore "$SELECTED_FILE" $NEXT_VMID --storage $STORAGE

                    # 询问用户是否启动恢复成功的虚拟机
                    echo "虚拟机 ID: $NEXT_VMID 配置成功，请选择下一步操作："
                    echo "1. 启动虚拟机 ID: $NEXT_VMID"
                    echo "2. 稍后启动 ID: $NEXT_VMID"
                    echo "b. 返回主菜单"
                    echo "0. 退出程序"

                    while true; do
                        read -p "请输入序号后按Enter: " NEXT_STEP

                        case $NEXT_STEP in
                            1)
                                # 启动虚拟机
                                qm start $NEXT_VMID
                                if [ $? -eq 0 ]; then
                                    echo "虚拟机 ID: $NEXT_VMID 已成功启动。"
                                else
                                    echo "虚拟机 ID: $NEXT_VMID 启动失败。"
                                fi
                                exit 0
                                ;;
                            2)
                                echo "虚拟机 ID: $NEXT_VMID 启动稍后进行。"
                                exit 0
                                ;;
                            b)
                                main_menu
                                break
                                ;;
                            0)
                                echo "退出程序"
                                exit 0
                                ;;
                            *)
                                echo "无效选项，请重新选择."
                                ;;
                        esac
                    done
                fi
                break
                ;;
        esac
    done
    cloud_tools_menu
}




# 一键开启直通
enable_passthrough() {
    clear
#!/bin/bash

# Intel方案执行函数
run_intel_cpu_plan() {
    local plan=$1
    echo "执行 Intel CPU方案 $plan"

    # 步骤 1: 编辑 /etc/modprobe.d/kvm.conf
    echo "步骤 1: 编辑 /etc/modprobe.d/kvm.conf"
    echo "options kvm ignore_msrs=Y report_ignored_msrs=0" > /etc/modprobe.d/kvm.conf

    # 步骤 2: 启动内核IOMMU支持
    echo "步骤 2: 编辑 /etc/default/grub"
    
    # 注释掉所有的 GRUB_CMDLINE_LINUX_DEFAULT 行
    sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT="/s/^/#/' /etc/default/grub

    # 根据选择的方案，插入新的内核参数
    local grub_param=""
    if [ "$plan" -eq 1 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on\""
    elif [ "$plan" -eq 2 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on initcall_blacklist=sysfb_init pcie_acs_override=downstream,multifunction\""
    elif [ "$plan" -eq 3 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu=pt\""
    elif [ "$plan" -eq 4 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu=pt pcie_acs_override=downstream\""
    elif [ "$plan" -eq 5 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu=pt pcie_acs_override=downstream,multifunction\""
    elif [ "$plan" -eq 6 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu=pt pcie_acs_override=downstream,multifunction\""
    elif [ "$plan" -eq 7 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on no_iommu_attach\""
    elif [ "$plan" -eq 8 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu.strict=1\""
    elif [ "$plan" -eq 9 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu=pt vfio_iommu_type1.allow_unsafe_interrupts=1 vfio_pci.disable_idle_d3=1\""
    elif [ "$plan" -eq 10 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on iommu=pt video=efifb:off\""
    elif [ "$plan" -eq 11 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet intel_iommu=on pci=realloc\""
    fi

    # 如果文件中没有找到 GRUB_CMDLINE_LINUX_DEFAULT 行，则插入新行
    if grep -q "^GRUB_CMDLINE_LINUX=" /etc/default/grub; then
        # 将对应的 GRUB_CMDLINE_LINUX_DEFAULT 参数插入到 GRUB_CMDLINE_LINUX="" 前
        sed -i "/^GRUB_CMDLINE_LINUX=\"\"/i $grub_param" /etc/default/grub
    else
        # 如果没有找到 GRUB_CMDLINE_LINUX 行，直接在文件末尾追加
        echo "$grub_param" >> /etc/default/grub
    fi

    # 步骤 3: 更新 grub
    echo "步骤 3: 更新 grub"
    update-grub

    # 步骤 4: 允许不安全中断
    echo "步骤 4: 编辑 /etc/modprobe.d/iommu_unsafe_interrupts.conf"
    echo "options vfio_iommu_type1 allow_unsafe_interrupts=1" > /etc/modprobe.d/iommu_unsafe_interrupts.conf

    # 步骤 5: 启用必要的内核模块
    echo "步骤 5: 编辑 /etc/modules"
    echo -e "vfio\nvfio_iommu_type1\nvfio_pci\nvfio_virqfd" > /etc/modules

    # 步骤 6: 将驱动程序模块列入黑名单
    echo "步骤 6: 编辑 /etc/modprobe.d/pve-blacklist.conf"
    cat <<EOL > /etc/modprobe.d/pve-blacklist.conf
blacklist nouveau
blacklist nvidia
blacklist nvidiafb
blacklist snd_hda_codec_hdmi
blacklist snd_hda_intel
blacklist snd_hda_codec
blacklist snd_hda_core
blacklist radeon
blacklist amdgpu
blacklist i915
options vfio_iommu_type1 allow_unsafe_interrupts=1
EOL

    # 步骤 7: 刷新 initramfs
    echo "步骤 7: 刷新 initramfs"
    update-initramfs -u -k all

    echo "完成后需要重启测试是否生效"
    echo "1. 立即重启"
    echo "2. 稍后重启"
    echo "b. 返回主菜单"
    echo "0. 退出程序"
    while true; do
    read -p "请选择一个选项: " reboot_choice
    case $reboot_choice in
        1)
            reboot
            echo "正在重启…… 重启后请刷新页面"
            exit 0
            ;;
        2)
            echo "请稍后重启测试是否生效"
            exit 0
            ;;
        b)
            main_menu
            ;;
        0)
            echo "退出程序"
            exit 0
            ;;
        *)
            echo "无效选项，请重新选择."
            ;;
    esac
    done
}

# AMD方案执行函数
run_amd_cpu_plan() {
    local plan=$1
    echo "执行 AMD CPU方案 $plan"

    # 步骤 1: 编辑 /etc/modprobe.d/kvm.conf
    echo "步骤 1: 编辑 /etc/modprobe.d/kvm.conf"
    echo "options kvm ignore_msrs=Y report_ignored_msrs=0" > /etc/modprobe.d/kvm.conf

    # 步骤 2: 启动内核IOMMU支持
    echo "步骤 2: 编辑 /etc/default/grub"
    
    # 注释掉所有的 GRUB_CMDLINE_LINUX_DEFAULT 行
    sed -i '/^GRUB_CMDLINE_LINUX_DEFAULT="/s/^/#/' /etc/default/grub

    # 根据选择的方案，插入新的内核参数
    local grub_param=""
    if [ "$plan" -eq 1 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet amd_iommu=on iommu=pt\""
    elif [ "$plan" -eq 2 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet amd_iommu=on iommu=pt pcie_acs_override=downstream\""
    elif [ "$plan" -eq 3 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet amd_iommu=on iommu=pt pcie_acs_override=multifunction\""
    elif [ "$plan" -eq 4 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet amd_iommu=on iommu=pt pcie_acs_override=downstream,multifunction\""
    elif [ "$plan" -eq 5 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet amd_iommu=on iommu=pt no5lvl\""
    elif [ "$plan" -eq 6 ]; then
        grub_param="GRUB_CMDLINE_LINUX_DEFAULT=\"quiet amd_iommu=on iommu=pt pci=realloc\""
    fi

    # 如果文件中没有找到 GRUB_CMDLINE_LINUX_DEFAULT 行，则插入新行
    if grep -q "^GRUB_CMDLINE_LINUX=" /etc/default/grub; then
        # 将对应的 GRUB_CMDLINE_LINUX_DEFAULT 参数插入到 GRUB_CMDLINE_LINUX="" 前
        sed -i "/^GRUB_CMDLINE_LINUX=\"\"/i $grub_param" /etc/default/grub
    else
        # 如果没有找到 GRUB_CMDLINE_LINUX 行，直接在文件末尾追加
        echo "$grub_param" >> /etc/default/grub
    fi

    # 步骤 3: 更新 grub
    echo "步骤 3: 更新 grub"
    update-grub

    # 步骤 4: 允许不安全中断
    echo "步骤 4: 编辑 /etc/modprobe.d/iommu_unsafe_interrupts.conf"
    echo "options vfio_iommu_type1 allow_unsafe_interrupts=1" > /etc/modprobe.d/iommu_unsafe_interrupts.conf

    # 步骤 5: 启用必要的内核模块
    echo "步骤 5: 编辑 /etc/modules"
    echo -e "vfio\nvfio_iommu_type1\nvfio_pci\nvfio_virqfd" > /etc/modules

    # 步骤 6: 将驱动程序模块列入黑名单
    echo "步骤 6: 编辑 /etc/modprobe.d/pve-blacklist.conf"
    cat <<EOL > /etc/modprobe.d/pve-blacklist.conf
blacklist nouveau
blacklist nvidia
blacklist nvidiafb
blacklist snd_hda_codec_hdmi
blacklist snd_hda_intel
blacklist snd_hda_codec
blacklist snd_hda_core
blacklist radeon
blacklist amdgpu
blacklist i915
options vfio_iommu_type1 allow_unsafe_interrupts=1
EOL

    # 步骤 7: 刷新 initramfs
    echo "步骤 7: 刷新 initramfs"
    update-initramfs -u -k all

    echo "完成后需要重启测试是否生效"
    echo "1. 立即重启"
    echo "2. 稍后重启"
    echo "b. 返回主菜单"
    echo "0. 退出程序"
    while true; do
    read -p "请选择一个选项: " reboot_choice
    case $reboot_choice in
        1)
            reboot
            echo "正在重启…… 重启后请刷新页面"
            exit 0
            ;;
        2)
            echo "请稍后重启测试是否生效"
            exit 0
            ;;
        b)
            main_menu
            ;;
        0)
            echo "退出程序"
            exit 0
            ;;
        *)
            echo "无效选项，请重新选择."
            ;;
    esac
    done
}

# 主菜单函数
zt_main_menu() {
    while true; do
        clear
        echo "选择CPU方案"
        echo "1. Intel方案"
        echo "2. AMD方案"
        echo "b. 返回主菜单"
        echo "0. 退出程序"
        read -p "请选择一个选项: " cpu_choice

        case $cpu_choice in
            1)
                intel_menu
                ;;
            2)
                amd_menu
                ;;
            b)
                main_menu
                ;;
            0)
                echo "退出程序"
                exit 0
                ;;
            *)
                echo "无效选项，请重新选择."
                sleep 1
                ;;
        esac
    done
}

# Intel方案子菜单
intel_menu() {
    while true; do
        clear
        echo "选择Intel CPU方案（自己电脑适合哪种方式的直通，需逐一测试）"
        echo "1.  Intel方案一：基础直通功能，适用于简单直通需求。"
        echo "2.  Intel方案二：增强兼容性，适用于可能存在帧缓冲冲突的情况。"
        echo "3.  Intel方案三：性能优化，适合追求低虚拟化低消耗的场景。"
        echo "4.  Intel方案四：性能与兼容性的平衡选择。"
        echo "5.  Intel方案五：允许设备组拆分，适用于需要将多个设备直通至不同虚拟机的情况。"
        echo "6.  Intel方案六：与方案五一致，主要是为了确保脚本的灵活性，保留了重复选项。"
        echo "7.  Intel方案七：禁用 IOMMU 中的虚拟化中继，防止部分设备被内核默认接管，从而确保设备更直接地分配给虚拟机。"
        echo "8.  Intel方案八：启用设备分组限制以增强隔离，减少不同设备之间的干扰，适用于需要高安全性的环境。"
        echo "9.  Intel方案九：绕过某些设备需要的中断限制，禁用设备的低功耗模式（D3），以避免性能下降。"
        echo "10. Intel方案十：GPU 直通优化，禁用 EFI 框架缓冲区以避免 GPU 被宿主机锁定，适合显卡直通。"
        echo "11. Intel方案十一：允许内核重新分配 PCI 资源，解决硬件资源分配冲突问题。"
        echo "0.  返回上一级菜单"
        read -p "请选择一个方案: " plan_choice
        if [ "$plan_choice" -ge 1 ] && [ "$plan_choice" -le 11 ]; then
            run_intel_cpu_plan $plan_choice
            break
        elif [ "$plan_choice" -eq 0 ]; then
            zt_main_menu
            break
        else
            echo "无效选项，请重新选择."
            sleep 1
        fi
    done
}

# AMD方案子菜单
amd_menu() {
    while true; do
        clear
        echo "选择AMD CPU方案"
        echo "1. AMD方案一：启用通过模式 (iommu=pt)，减少虚拟化性能损耗，提高直通设备的性能。"
        echo "2. AMD方案二：在方案一的基础上，启用PCIe ACS分隔功能，对部分主板未提供完整分组隔离的PCIe设备进行逻辑分组优化。"
        echo "3. AMD方案三：在方案一的基础上，启用PCIe多功能设备直通，适用于需要将多功能 PCIe 设备（如网卡）拆分后进行独立直通的场景。"
        echo "4. AMD方案四：结合方案二和方案三，既优化PCIe设备分组，又支持多功能设备的独立直通。适用于复杂硬件环境中的高性能直通需求。"
        echo "5. AMD方案五：在方案一的基础上，禁用5级页表功能 (no5lvl)，防止某些硬件或内核版本对5级页表支持不足而导致的兼容性问题。"
        echo "6. AMD方案六：在方案一的基础上，启用 PCI 设备资源重新分配功能，解决某些设备由于地址空间不足而无法正确直通的问题。"
        echo "0. 返回上一级菜单"
        read -p "请选择一个方案: " plan_choice
        if [ "$plan_choice" -ge 1 ] && [ "$plan_choice" -le 6 ]; then
            run_amd_cpu_plan $plan_choice
            break
        elif [ "$plan_choice" -eq 0 ]; then
            zt_main_menu
            break
        else
            echo "无效选项，请重新选择."
            sleep 1
        fi
    done
}

# 执行直通硬件的主菜单
zt_main_menu

    cloud_tools_menu
}




# 合并PVE的local-lvm分区
local_lvm() {
    clear
#!/bin/bash

# 检查是否以root用户运行脚本
if [ "$EUID" -ne 0 ]; then
    echo "请使用 root 用户权限运行此脚本！"
    exit 1
fi

# 高危操作确认
echo "警告："
echo "1.此操作将删除所有的虚拟机，并将 local 和 local-lvm 分区合并！"
echo "2.操作不可逆，请确保已备份所有虚拟机与重要数据。"
echo "3.确认关闭所有虚拟机后再执行，否则会合并失败。"
echo "4.继续操作可能导致数据丢失，请谨慎选择。"

while true; do
    read -p "您是否已备份并确认要继续执行？[y/n]: " confirm
    case $confirm in
        y)
            echo "您已确认继续执行，开始操作..."
            break
            ;;
        n)
            echo "操作已取消。"
            cloud_tools_menu
            break
            ;;
        *)
            echo "无效输入，请输入 'y' 或 'n'。"
            ;;
    esac
done

# 设置相关路径
CONF_DIR="/etc/pve/qemu-server/"
CONF_DIU="/etc/pve/lxc/"
echo "开始合并 PVE 的 local 和 local-lvm 分区..."

# Step 1: 删除 local-lvm 逻辑卷
echo "正在删除逻辑卷 pve/data..."
lvremove -y pve/data
if [ $? -ne 0 ]; then
    echo "删除逻辑卷失败，请检查是否存在 pve/data 或手动处理。"
    exit 1
fi
echo "逻辑卷 pve/data 已成功删除。"

# Step 2: 扩展逻辑卷，将空闲磁盘空间分配到 pve/root
echo "正在扩展逻辑卷 pve/root..."
lvextend -l +100%FREE -r pve/root
if [ $? -ne 0 ]; then
    echo "扩展逻辑卷失败，请检查磁盘空间或手动处理。"
    exit 1
fi
echo "逻辑卷 pve/root 已成功扩展。"

# Step 3: 自动清理 local-lvm 存储配置
echo "正在删除 local-lvm 存储配置..."
STORAGE_CONFIG="/etc/pve/storage.cfg"
if grep -q "local-lvm" "$STORAGE_CONFIG"; then
    sed -i '/local-lvm/,+2d' "$STORAGE_CONFIG"
    echo "local-lvm 存储配置已成功删除。"
else
    echo "local-lvm 存储配置不存在，无需删除。"
fi

# Step 4: 修改 local 存储设置为支持所有内容
echo "正在修改 local 存储设置..."
# 定义存储配置文件路径
STORAGE_CONFIG="/etc/pve/storage.cfg"
# 备份原始配置文件
if [ -f "$STORAGE_CONFIG" ]; then
    cp "$STORAGE_CONFIG" "${STORAGE_CONFIG}.bak_$(date +%Y%m%d%H%M%S)"
    echo "已备份原配置文件为 ${STORAGE_CONFIG}.bak_$(date +%Y%m%d%H%M%S)"
else
    echo "配置文件 $STORAGE_CONFIG 不存在，将创建新文件。"
fi
# 清空配置文件并写入新内容
cat <<EOF >"$STORAGE_CONFIG"
dir: local
    path /var/lib/vz
    content vztmpl,rootdir,snippets,images,iso,backup,import
    shared 0
EOF
echo "已成功更新存储配置文件：$STORAGE_CONFIG"

# Step 5: 检查并删除残留的虚拟机配置文件
echo "正在检查和删除残留的虚拟机配置文件..."
if [ -d "$CONF_DIR" ]; then
    find "$CONF_DIR" -name "*.conf" -exec rm -f {} \;
    echo "残留的虚拟机配置文件已删除。"
else
    echo "目录 $CONF_DIR 不存在，无需操作。"
fi
echo "正在检查和删除残留的虚拟机配置文件..."
if [ -d "$CONF_DIU" ]; then
    find "$CONF_DIU" -name "*.conf" -exec rm -f {} \;
    echo "残留的虚拟机配置文件已删除。"
else
    echo "目录 $CONF_DIU 不存在，无需操作。"
fi


# Step 6: 清理完成并提示用户选择操作
while true; do
    echo -e "\n所有操作已完成！请选择下一步操作："
    echo "1.立即重启"
    echo "2.稍后重启"
    echo "b.返回主菜单"
    echo "0.退出"

    read -p "请输入选项 (1-4): " choice
    case $choice in
        1)
            echo "正在重启系统..."
            reboot
            exit 0
            ;;
        2)
            echo "请稍后通过 'reboot' 命令或手动重启系统。"
            exit 0
            ;;
        b)
            main_menu
            break
            ;;
        0)
            echo "退出脚本。"
            exit 0
            ;;
        *)
            echo "无效选项，请重新输入。"
            ;;
    esac
done

    cloud_tools_menu
}





# 关闭每次登录后弹出的订阅窗口
# 禁用 Proxmox VE 的订阅弹窗脚本,Proxmox VE 6.3 / 6.4 / 7.0 / 7.1 / 7.2 / 7.3 / 7.4 / 8.0 / 8.1 / 8.2 去掉未订阅的提示
local_dy() {
    clear

# 检查是否以 root 用户运行
if [ "$EUID" -ne 0 ]; then
  echo "请以 root 用户运行此脚本。"
  exit 1
fi

# 确认文件路径
PVE_MANAGER_FILE="/usr/share/pve-manager/js/pvemanagerlib.js"
PROXMOX_LIB_FILE="/usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js"

# 检查文件是否存在
if [ ! -f "$PVE_MANAGER_FILE" ]; then
  echo "文件 $PVE_MANAGER_FILE 不存在，脚本无法继续。"
  exit 1
fi

if [ ! -f "$PROXMOX_LIB_FILE" ]; then
  echo "文件 $PROXMOX_LIB_FILE 不存在，脚本无法继续。"
  exit 1
fi

# 备份原始文件
echo "正在备份文件..."
cp "$PVE_MANAGER_FILE" "${PVE_MANAGER_FILE}.bak"
cp "$PROXMOX_LIB_FILE" "${PROXMOX_LIB_FILE}.bak"
echo "备份完成。"

# 修改文件，禁用订阅提示
echo "正在修改文件 $PVE_MANAGER_FILE..."
sed -i_orig "s/data.status === 'Active'/true/g" "$PVE_MANAGER_FILE"

echo "正在修改文件 $PROXMOX_LIB_FILE..."
sed -i_orig "s/if (res === null || res === undefined || \!res || res/if(/g" "$PROXMOX_LIB_FILE"
sed -i_orig "s/.data.status.toLowerCase() !== 'active'/false/g" "$PROXMOX_LIB_FILE"


    # 提供操作选项让用户选择是否立即重启 pveproxy 服务
    echo "操作完成！请重启 PVE 测试是否生效，请选择下一步操作"
    echo "1. 立即重启"
    echo "2. 稍后重启"
    echo "b. 返回主菜单"
    echo "0. 退出程序"
    
    while true; do
        read -p "请输入选项 (1/2/b/0): " USER_CHOICE

        case "$USER_CHOICE" in
            1)
                # 立即重启 pve
                echo "正在重启 PVE ..."
                echo "等待重启成功后刷新页面继续你的操作"
                reboot
                exit 0
                break
                ;;
            2)
                # 稍后重启 pveproxy 服务
                echo "您可以稍后手动重启 PVE"
                echo "执行命令：reboot"
                exit 0
                break
                ;;
            b)
                # 返回主菜单
                echo "返回主菜单..."
                main_menu
                break
                ;;
            0)
                # 退出程序
                echo "退出程序..."
                exit 0
                ;;
            *)
                # 无效选项，重新提示
                echo "无效的选项，请重新选择。"
                ;;
        esac
    done

    cloud_tools_menu
}










# 下载核显ROM（示例）
download_igpu_rom() {
    clear
# 下载核显ROM的存储路径
ROM_DIR="/usr/share/kvm"
mkdir -p "$ROM_DIR"

# 显示主菜单
function show_main_menu {
    echo "请选择要下载的ROM文件（输入0退出）："
    echo "1. pc-Intel-6-7-8-9.rom"
    echo "2. pc-Intel-4-5.rom"
    echo "3. pc-Intel-12-13-14.rom"
    echo "4. pc-Intel-11.rom"
    echo "5. pc-Intel-10.rom"
    echo "6. nb-13-13700h.rom"
    echo "7. nb-12-12700h.rom"
    echo "8. nb-11-1185G7E.rom"
    echo "9. nb-11-11700h.rom"
    echo "10. n100.rom"
    echo "11. j6413.rom"
    echo "12. j4125.rom"
    echo "13. i7-9700.rom"
    echo "14. i5-8265U.rom"
    echo "15. i3-8130U.rom"
    echo "16. i3-7100.rom"
    echo "17. i3-6100U.rom"
    echo "18. i3-10105.rom"
    echo "19. N3350.rom"
    echo "20. N2930.rom"
    echo "21. Intel-6-14.rom"
    echo "22. Intel-11-14-J6412-n5095-1240p-n100-N2930-N3350-1185G7E-11700h-12700h-13700h.rom"
    echo "23. AMD-5700U.rom"
    echo "24. AMD-5500U.rom"
    echo "25. AMD-5400U.rom"
    echo "26. AMD-3k-7k-4800U-5500U-6900HX-7640HS-7840HS-7840U.rom"
    echo "27. 12-n100.rom"
    echo "28. 12-1240p.rom"
    echo "29. 11-n5095.rom"
    echo "30. 11-J6412.rom"
    echo "31. i5-10500.rom"
    echo "32. 零刻eq14.rom"
    echo "b. 返回主菜单"
    echo "0. 退出"
    read -p "请输入rom对应序号，或输入0退出: " ROM_CHOICE

    case $ROM_CHOICE in
        1)
            ROM_NAME="pc-Intel-6-7-8-9.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/btmjsNYOX1mO.rom"
            ;;
        2)
            ROM_NAME="pc-Intel-4-5.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/Nxsy3gpYfvcw.rom"
            ;;
        3)
            ROM_NAME="pc-Intel-12-13-14.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/LnsuGJ8I1cpf.rom"
            ;;
        4)
            ROM_NAME="pc-Intel-11.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/h4lKBKbySxuM.rom"
            ;;
        5)
            ROM_NAME="pc-Intel-10.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/t7YXEaXKMR94.rom"
            ;;
        6)
            ROM_NAME="nb-13-13700h.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/IfNXg9MOXnqP.rom"
            ;;
        7)
            ROM_NAME="nb-12-12700h.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/MVaJwqKqEcZQ.rom"
            ;;
        8)
            ROM_NAME="nb-11-1185G7E.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/R3mwxZrHQlbG.rom"
            ;;
        9)
            ROM_NAME="nb-11-11700h.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/bQA4aOyHF9iC.rom"
            ;;
        10)
            ROM_NAME="n100.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/oGNZzPPUfcqw.rom"
            ;;
        11)
            ROM_NAME="j6413.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/aty3JiKPJVFZ.rom"
            ;;
        12)
            ROM_NAME="j4125.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/BjmRistQqnfW.rom"
            ;;
        13)
            ROM_NAME="i7-9700.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/rG3EmEI1KoZu.rom"
            ;;
        14)
            ROM_NAME="i5-8265U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/ksVQfMzwwyDJ.rom"
            ;;
        15)
            ROM_NAME="i3-8130U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/ryBBYyIxvYYw.rom"
            ;;
        16)
            ROM_NAME="i3-7100.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/DBBIIvBcDYuc.rom"
            ;;
        17)
            ROM_NAME="i3-6100U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/y02AqDC0OuVk.rom"
            ;;
        18)
            ROM_NAME="i3-10105.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/I67bc80RTkLO.rom"
            ;;
        19)
            ROM_NAME="N3350.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/yWNibNU1wRjO.rom"
            ;;
        20)
            ROM_NAME="N2930.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/25XWwohIgIog.rom"
            ;;
        21)
            ROM_NAME="Intel-6-14.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/3WPEk6yKbOXg.rom"
            ;;
        22)
            ROM_NAME="Intel-11-14-J6412-n5095-1240p-n100-N2930-N3350-1185G7E-11700h-12700h-13700h.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/7AM5g3ZPed8V.rom"
            ;;
        23)
            ROM_NAME="AMD-5700U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/AqBrSqRnAhOD.rom"
            ;;
        24)
            ROM_NAME="AMD-5500U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/sNOAVhNGlU8f.rom"
            ;;
        25)
            ROM_NAME="AMD-5400U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/ta6oppfE9uP3.rom"
            ;;
        26)
            ROM_NAME="AMD-3k-7k-4800U-5500U-6900HX-7640HS-7840HS-7840U.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/wPfrzUIcwtNs.rom"
            ;;
        27)
            ROM_NAME="12-n100.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/GYYZT6cMEkc3.rom"
            ;;
        28)
            ROM_NAME="12-1240p.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/uR4BxqGBUlqH.rom"
            ;;
        29)
            ROM_NAME="11-n5095.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/uJaMizFaSlAU.rom"
            ;;
        30)
            ROM_NAME="11-J6412.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/s03oDrQk6owJ.rom"
            ;;
        31)
            ROM_NAME="i5-10500.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/wrVz15mTbY2k.rom"
            ;;
        32)
            ROM_NAME="eq14.rom"
            ROM_URL="https://pve.vmicloud.top:8889/down/YpwTfAul1OGv.rom"
            ;;
        b)
            main_menu
            ;;
        0)
            echo "退出脚本"
            exit 0
            ;;
        *)
            echo "无效选择，请重新选择。"
            return
            ;;
    esac

    # 检查文件是否存在
    if [ -f "$ROM_DIR/$ROM_NAME" ]; then
        echo "$ROM_NAME 已经存在，无需下载，可在虚拟机中直通核显后,在核显参数行添加romfile=$ROM_NAME 参数使用(注:必须开启硬件直通后才有效果)"
    else
        # 下载ROM文件
        wget --progress=bar:force:noscroll --no-check-certificate -O "$ROM_DIR/$ROM_NAME" "$ROM_URL"
        if [ $? -eq 0 ]; then
            echo "$ROM_NAME 已下载到 $ROM_DIR ，可在虚拟机中直通核显后,在核显参数行添加romfile=$ROM_NAME 参数使用(注:必须开启硬件直通后才有效果)"
        else
            echo "下载失败，请稍后重试。"
        fi
    fi

    # 选择下一步操作
echo "请选择操作:"
echo "1. 返回下载核显ROM菜单"
echo "b. 返回主菜单"
echo "0. 退出程序"
while true; do
read -p "请输入对应序号: " NEXT_ACTION

case $NEXT_ACTION in
    1)
        # 返回当前菜单
        # 在这里调用当前菜单的显示函数或其他代码
        show_main_menu
        break
        ;;
    b)
        # 返回主菜单
        main_menu
        break
        ;;
    0)
        # 退出脚本
        echo "退出程序"
        exit 0
        ;;
    *)
        # 无效选择，提示并返回主菜单
        echo "无效选择，请重新选择。"
        ;;
esac
done
}

# 执行下载ROM的主菜单
while true; do
    show_main_menu
done

    cloud_tools_menu
}


# 启动主菜单
main_menu