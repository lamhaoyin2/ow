#!/bin/bash
cd /root
apt update -y
apt install xorg -y
apt install lxde-core -y
apt install tightvncserver -y

tightvncserver :1
tightvncserver -kill :1

echo " #!/bin/sh
xrdb $HOME/.Xresources
xsetroot -solid grey
export XKL_XMODMAP_DISABLE=1
/etc/X11/Xsession
lxterminal &
/usr/bin/lxsession -s LXDE & " > ~/.vnc/xstartup
