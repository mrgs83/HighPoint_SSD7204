#!/bin/sh
apt update && apt upgrade -y;
apt install gcc make perl;
mkdir /tmp7204 && cd /tmp7204;
wget https://raw.githubusercontent.com/mrgs83/HighPoint_SSD7204/main/hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
wget https://raw.githubusercontent.com/mrgs83/HighPoint_SSD7204/main/RAID_Manage_Linux_v3.0.7_21_11_12.bin;
chmod +x hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
chmod +x RAID_Manage_Linux_v3.0.7_21_11_12.bin;
./hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
./RAID_Manage_Linux_v3.0.7_21_11_12.bin;
rm -rf /tmp7204;
reboot
