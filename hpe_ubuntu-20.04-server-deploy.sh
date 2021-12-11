#!/bin/sh
apt update && apt upgrade -y;
apt install gcc make perl curl mc htop zip;
mkdir /tmp7204 && cd /tmp7204;
wget https://raw.githubusercontent.com/mrgs83/HighPoint_SSD7204/main/hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
wget https://raw.githubusercontent.com/mrgs83/HighPoint_SSD7204/main/RAID_Manage_Linux_v3.0.7_21_11_12.bin;
chmod +x hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
chmod +x RAID_Manage_Linux_v3.0.7_21_11_12.bin;
./hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
./RAID_Manage_Linux_v3.0.7_21_11_12.bin;
curl https://downloads.linux.hpe.com/SDR/hpPublicKey2048.pub | apt-key add -;
curl https://downloads.linux.hpe.com/SDR/hpPublicKey2048_key1.pub | apt-key add -;
curl https://downloads.linux.hpe.com/SDR/hpePublicKey2048_key1.pub | apt-key add -;
add-apt-repository 'deb [arch=amd64,i386] http://downloads.linux.hpe.com/SDR/repo/mcp bionic/current non-free';
add-apt-repository 'deb [arch=amd64,i386] http://downloads.linux.hpe.com/SDR/repo/mcp bionic/10.80 non-free';
wget http://archive.ubuntu.com/ubuntu/pool/main/j/json-c/libjson-c3_0.12.1-1.3_amd64.deb;
dpkg -i libjson-c3_0.12.1-1.3_amd64.deb;
apt update;
apt install amsd;
apt install hponcfg;
rm -rf /tmp7204;
reboot
