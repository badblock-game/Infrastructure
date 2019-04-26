#!/bin/bash
#Configurations du script

packages_install="nload htop sudo pigz aptitude zip unzip nano docker apt-transport-https curl fail2ban screen git systemd python-software-properties debconf-utils software-properties-common python-software-properties"

#==================================
#Header
#==================================
start=`date +%s`
echo -e "\033[1;36m
 ÛÛÛÛÛÛÛÛÛÛÛ                ÛÛÛÛÛ ÛÛÛÛÛÛÛÛÛÛÛ  ÛÛÛÛ                    ÛÛÛÛÛ
°°ÛÛÛ°°°°°ÛÛÛ              °°ÛÛÛ °°ÛÛÛ°°°°°ÛÛÛ°°ÛÛÛ                   °°ÛÛÛ
 °ÛÛÛ    °ÛÛÛ  ÛÛÛÛÛÛ    ÛÛÛÛÛÛÛ  °ÛÛÛ    °ÛÛÛ °ÛÛÛ   ÛÛÛÛÛÛ   ÛÛÛÛÛÛ  °ÛÛÛ ÛÛÛÛÛ
 °ÛÛÛÛÛÛÛÛÛÛ  °°°°°ÛÛÛ  ÛÛÛ°°ÛÛÛ  °ÛÛÛÛÛÛÛÛÛÛ  °ÛÛÛ  ÛÛÛ°°ÛÛÛ ÛÛÛ°°ÛÛÛ °ÛÛÛ°°ÛÛÛ
 °ÛÛÛ°°°°°ÛÛÛ  ÛÛÛÛÛÛÛ °ÛÛÛ °ÛÛÛ  °ÛÛÛ°°°°°ÛÛÛ °ÛÛÛ °ÛÛÛ °ÛÛÛ°ÛÛÛ °°°  °ÛÛÛÛÛÛ°
 °ÛÛÛ    °ÛÛÛ ÛÛÛ°°ÛÛÛ °ÛÛÛ °ÛÛÛ  °ÛÛÛ    °ÛÛÛ °ÛÛÛ °ÛÛÛ °ÛÛÛ°ÛÛÛ  ÛÛÛ °ÛÛÛ°°ÛÛÛ
 ÛÛÛÛÛÛÛÛÛÛÛ °°ÛÛÛÛÛÛÛÛ°°ÛÛÛÛÛÛÛÛ ÛÛÛÛÛÛÛÛÛÛÛ  ÛÛÛÛÛ°°ÛÛÛÛÛÛ °°ÛÛÛÛÛÛ  ÛÛÛÛ ÛÛÛÛÛ
°°°°°°°°°°°   °°°°°°°°  °°°°°°°° °°°°°°°°°°°  °°°°°  °°°°°°   °°°°°°  °°°° °°°°°"
echo -n -e '\e[?0c'
echo -e "\033[1;36m © Copyright 2017 BadBlock. Tous droits réservés, dernière modification le 02-10-2017"

#==================================
#1 Installation des packages
#==================================
apt-get install $packages_install -y
apt-get install build-essential -y

#==================================
#2 Téléchargement de l'installateur de Java
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_java_u4tj342.sh

#==================================
#3 Lancement de l'installateur de Java
#==================================
sh install_java_u4tj342.sh

#==================================
#4 Téléchargement de l'installateur de Docker
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_docker_ncc6547.sh

#==================================
#5 Lancement de l'installateur de Docker
#==================================
sh install_docker_ncc6547.sh

#==================================
#6 Téléchargement de l'installateur de vRack
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_vrack_544p8wm.sh

#==================================
#7 Lancement de l'installateur de vRack
#==================================
sh install_vrack_544p8wm.sh


#==================================
#8 Téléchargement de l'installateur de PortSentry
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_portsentry_379fa4z.sh

#==================================
#9 Lancement de l'installateur de PortSentry
#==================================
sh install_portsentry_379fa4z.sh

#==================================
#10 Changement du port SSH
#==================================
sed -i 's/22/13827/g' /etc/ssh/sshd_config

#==================================
#11 Délai de déconnexion SSH
#==================================
sed -i 's/LoginGraceTime 120/LoginGraceTime 10/g' /etc/ssh/sshd_config

#==================================
#12 Désactivation de l'IPV6 en SSH
#==================================
sed -i 's/#ListenAddress 0.0.0.0/ListenAddress 0.0.0.0/g' /etc/ssh/sshd_config

#==================================
#13 Téléchargement de la configuration crontab
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_crontab_x8p377a.sh

#==================================
#14 Application des modifications crontab
#==================================
sh install_crontab_x8p377a.sh

#==================================
#15 Téléchargement de la configuration fail2ban
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_fail2ban_g7xx455.sh

#==================================
#16 Application des modifications fail2bam
#==================================
sh install_fail2ban_g7xx455.sh

#==================================
#17 Téléchargement des serveurs DNS resolvers
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_resolv_6q7j49p.sh

#==================================
#18 Application des serveurs DNS resolvers
#==================================
sh install_resolv_6q7j49p.sh

#==================================
#19 Affichage de l'avertissement SSH
#==================================
sed -i 's/#Banner/Banner/g' /etc/ssh/sshd_config

#==================================
#20 Téléchargement du modèle d'avertissement
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_warnssh_x759hh4.sh

#==================================
#21 Application du modèle d'avertissement
#==================================
sh install_warnssh_x759hh4.sh

#==================================
#22 Téléchargement du MOTD personnalisé
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_motd_87a78cq.sh

#==================================
#23 Application du MOTD personnalisé
#==================================
sh install_motd_87a78cq.sh

#==================================
#24 Téléchargement du script d'alertes SSH
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_alertssh_3c72g2a.sh

#==================================
#25 Application du script d'alertes SSH
#==================================
sh install_alertssh_3c72g2a.sh

#==================================
#26 Désactivation des réponses ICMP (PING)
#==================================
echo 1 >/proc/sys/net/ipv4/icmp_echo_ignore_all

#==================================
#27 Téléchargement du script boot
#==================================
wget --user-agent="BadBlock-Auth-7288379222376377459473593455375766657722329226777957476999544955" https://installer-7q2w32n:25yqk224rs43cbu343s9yynx44n44gd6t5tr28996s78ma944sy2d4ypm9w7k7uh@cloud.badblock.fr/installer-36fLiAiUWm7XNrse56bJQGrbh32V497e6V3899RQn99x7qzYrr2VYT9Pf5KmTZ6b/install_boot_2p9rv36.sh

#==================================
#28 Installation du script de boot
#==================================
sh install_boot_2p9rv36.sh

#==================================
#29 reload des services
#==================================
service ssh reload
service fail2ban reload
service cron reload

#==================================
#30 suppression des fichiers d'installations
#==================================
rm install_*.sh crontab.txt

#==================================
#Footer
#==================================
end=`date +%s`
runtime=$((end-start))
echo "Temps du script: $runtime"
printf "\n "
printf  "\033[1;32m La machine est maintenant prête !"
printf "\n "
echo -n -e '\e[?0c'
#© Copyright 2017 BadBlock. Tous droits réservés.
#micro_maniaque | https://twitter.com/micro_maniaque
