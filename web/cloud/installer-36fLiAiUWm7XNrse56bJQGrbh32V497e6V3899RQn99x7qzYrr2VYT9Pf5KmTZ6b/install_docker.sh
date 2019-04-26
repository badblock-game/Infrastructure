echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
apt-get update
apt-get install docker-engine -y
systemctl start docker
sleep 3
cd /home/
mkdir mc
cd mc/
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://cloud.badblock.fr/Docker-sdEPXLy6R7g7767cErWT2jFrS2TdE42tF7c9vZmvc6F4Q5d9dkq35vq8V6g46dJx8Gdhk3URQ4MtrSGPgdF59aAqH5ivVU39X9578xq7URU3U3ce9eQb55MBGxs65XX3/Docker.tar.gz
tar xzvf Docker.tar.gz
rm Docker.tar.gz
cd Docker
ip=`curl -s -A "BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://cloud.badblock.fr/get_ip.php 2>/dev/null`
sed -i "s/IPNULL/$ip/g" "/home/mc/Docker/configuration.json"
echo 3 > /proc/sys/vm/drop_caches
sh boot.sh
