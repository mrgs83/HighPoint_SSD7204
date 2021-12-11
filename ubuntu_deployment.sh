#!/bin/sh
apt update && apt upgrade -y;
apt install gcc make perl;
mkdir /tmp7204 && cd /tmp7204;
wget hptnvme_g5_linux_src_v1.3.2_2021_10_27.bin;
wget RAID_Manage_Linux_v3.0.7_21_11_12.tgz;
