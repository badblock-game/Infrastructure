apt-get install dirmngr curl -y
echo "deb http://ppa.launchpad.net/linuxuprising/java/ubuntu bionic main" | tee /etc/apt/sources.list.d/java.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 73C3DB2A
apt-get update
echo "oracle-java10-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
apt-get install oracle-java10-installer -y