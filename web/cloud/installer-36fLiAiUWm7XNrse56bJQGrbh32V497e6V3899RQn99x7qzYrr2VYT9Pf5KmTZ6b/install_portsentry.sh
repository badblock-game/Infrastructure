git clone https://github.com/drk1wi/portspoof.git
cd portspoof
./configure --sysconfdir=/etc/
make
make install
portspoof -c /etc/portspoof.conf -s /etc/portspoof_signatures -D
portspoof -D
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 35000:60000 -j REDIRECT --to-ports 4444
