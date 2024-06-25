termux-x11 :0 -ac &
sudo busybox mount --bind $PREFIX/tmp /data/local/flyos/container/userspace/tmp
pulseaudio --start --exit-idle-time=-1
pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1
cd /data/flyos/bin
sudo bash /data/flyos/bin/userspace -c 'su - flyos -c "export DISPLAY=:0 && export PULSE_SERVER=127.0.0.1 && dbus-launch --exit-with-session startxfce4"'
