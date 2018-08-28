#!/bin/bash
echo "---------------------------------------------------------------------------------------------------------------------" 
echo "----LXDE+VNC+Firefox  V1.0 Powered by Tomy----"
echo "    URL:http://blog.ievo.top"
echo "    Telegram:@bestomy"
echo "---------------------------------------------------------------------------------------------------------------------" 
echo Press any key to continue! Exit with 'Ctrl'+'C' !
cd /root
apt-get update -y
apt-get install xorg -y
apt-get install lxde-core -y
apt-get install tightvncserver -y

tightvncserver :1
tightvncserver -kill :1

echo " #!/bin/sh
xrdb $HOME/.Xresources
xsetroot -solid grey
export XKL_XMODMAP_DISABLE=1
/etc/X11/Xsession
lxterminal &
/usr/bin/lxsession -s LXDE & " > ~/.vnc/xstartup

tightvncserver :1

echo "Install firefox and Chinese support"
apt-get install iceweasel -y
apt-get install lxde -y
apt-get install ttf-arphic-uming -y
apt-get install xfonts-intl-chinese -y
apt-get install xfonts-wqy -y
apt-get install ttf-arphic-ukai ttf-arphic-uming ttf-arphic-gbsn00lp ttf-arphic-bkai00mp ttf-arphic-bsmi00lp -y
echo "------------Finished!--------------"
echo "-------安装完成 祝您搞机愉快-------"