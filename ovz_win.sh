#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
clear;
cd /root
rm -f /root/GG
echo "Loading...."
clear
echo "+-----------------------------------------------------------------------+"
echo "|                         OpenVZ Install Windows                        |"
echo "+-----------------------------------------------------------------------+"
echo "|                       可乐博客  www.CokeMine.com                       |"
echo "+-----------------------------------------------------------------------+"
echo "|                            请依次输入 1.2.3                            |"
echo "+-----------------------------------------------------------------------+"
echo "|          若出现错误 请访问https://www.cokemine.com/ovz_win.html         |"
echo "+-----------------------------------------------------------------------+"
echo "请选择下载节点位置"
read -p '1.Onedrive' isUrl;
case "${isUrl}" in
	'1')
		Download_Url=https://odrive.aptx.xin/System ;;
esac
echo "1.  安装VNC_LXDE"
echo "2.  安装Qemu"
echo "3.安装DEEPIN-LITEXP-6.2精简XP 默认系统盘5GB 默认内存大小256MB"
read no
case "$no" in
    '1' )
	    apt-get -y update && apt-get -y install ca-certificates sudo ;
	    wget --no-check-certificate -qO 'lxde.sh' 'https://raw.githubusercontent.com/lpl2002/ovz_win/master/lxde.sh' && chmod a+x lxde.sh && bash lxde.sh;
	    bash ovz_win.sh;;
    '2' )
       	apt-get -y install qemu;
       	bash ovz_win.sh;;
    '3' )
		wget $Download_Url/DEEPIN-LITEXP-6.2.iso;
		qemu-img create -f qcow xitong.img 5G;
		qemu-i386 -cdrom DEEPIN-LITEXP-6.2.iso -m 256M -boot d xitong.img;;
	* )
        echo "输入错误"
esac