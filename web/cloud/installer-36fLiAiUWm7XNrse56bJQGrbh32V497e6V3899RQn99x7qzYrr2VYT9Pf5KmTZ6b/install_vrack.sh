rm -R /opt/vRack/
mkdir /opt/vRack/
cd /opt/
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://cloud.badblock.fr/vRack-b77SDpzPtj9esWxmbHF4r6apcEC5dnVsB677T952wrsiP7jZJ366454JS5M59Vd2aKJ4JTeBsps5b754t46J4s6ttWpW7HY9UL84PSYj6f9exbRBCD4jX48hKkrX43PQ/vRack.tar.gz
tar xzvf vRack.tar.gz
rm vRack.tar.gz
cd /opt/vRack/
sh boot.sh
