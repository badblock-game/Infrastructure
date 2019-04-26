cp /dev/null /etc/fail2ban/jail.conf
echo "# Fichier de configuration Fail2ban | BadBlock

[DEFAULT]

#Adresses IP Whitelist (Aucun bannissement)
ignoreip = 127.0.0.1/8

#Temps de bannissement par défault
bantime  = 3600

#Temps de bannissement après plusieurs tentatives
findtime = 86400
maxretry = 2

#autres configurations
backend = auto
usedns = warn
ignorecommand =

#
# ACTIONS
#

#Service d'envoi de courriel électronique
mta = sendmail

#Protocole par défaut TCP
protocol = tcp

#chaine de blocage
chain = INPUT

#banaction
banaction = iptables-multiport

#Actions, bannissement de l'adresse IP
action_ = %(banaction)s[name=%(__name__)s, port=\"%(port)s\", protocol=\"%(protocol)s\", chain=\"%(chain)s\"]
action = %(action_)s

#Filtres

[ssh]

enabled  = true
port     = 13827
filter   = sshd
logpath  = /var/log/auth.log
maxretry = 3

[dropbear]

enabled  = true
port     = 13827
filter   = dropbear
logpath  = /var/log/auth.log
maxretry = 3

[ssh-ddos]

enabled  = true
port     = 13827
filter   = sshd-ddos
logpath  = /var/log/auth.log
maxretry = 3

[ssh-iptables-ipset4]

enabled  = true
port     = 13827
filter   = sshd
banaction = iptables-ipset-proto4
logpath  = /var/log/auth.log
maxretry = 3" > /etc/fail2ban/jail.conf
