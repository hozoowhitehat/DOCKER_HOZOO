sudo apt update
sudo apt install xfce4 xfce4-goodies novnc python3-websockify python3-numpy tightvncserver htop nano neofetch -y novnc.pem -out novnc.pem -days 3650
USER=root vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak

websockify -D --web=/usr/share/novnc/ --cert=/home/ubuntu/novnc.pem 6080 localhost:5901
