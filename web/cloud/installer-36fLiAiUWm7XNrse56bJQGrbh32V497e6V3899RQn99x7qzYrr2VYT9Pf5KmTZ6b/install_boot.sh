echo "#! /bin/sh
# /etc/init.d/boot
#

# DOCKER RESTART SCRIPT
# NTPDate
/usr/sbin/ntpdate ntp.ovh.net
# Initialize PRE_DOCKER chain
iptables -N PRE_DOCKER
# Initialize Firewall
sh /home/mc/Docker/firewall.sh
# Initialize vRack
cd /opt/vRack
sh boot.sh
# Reboot Docker
/etc/init.d/docker restart
# Boot BadBlock Docker
cd /home/mc/Docker
sh boot.sh
# Clean memory
echo 3 > /proc/sys/vm/drop_caches
# Exit
exit 0" > /etc/init.d/boot
chmod +x /etc/init.d/boot
update-rc.d boot defaults
