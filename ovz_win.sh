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
echo "|                            请依次输入 1.2                              |"
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
read no
case "$no" in
    '1' )
		touch /dev/fuse  #不支持fuse的ovz的必要工作 感谢time4vps
	    apt-get -y update && apt-get -y install ca-certificates sudo ;
	    wget --no-check-certificate -qO 'lxde.sh' 'https://raw.githubusercontent.com/lpl2002/ovz_win/master/lxde.sh' && chmod a+x lxde.sh && bash lxde.sh;
	    tightvncserver :1
	    bash ovz_win.sh;;
    '2' )
       	apt-get -y install qemu;
       	bash ovz_win.sh;;
	* )
        echo "输入错误"
esac