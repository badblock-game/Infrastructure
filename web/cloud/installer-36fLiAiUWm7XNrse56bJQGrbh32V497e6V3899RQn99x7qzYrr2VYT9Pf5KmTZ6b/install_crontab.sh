crontab -r
echo "#BadBlock Crontab

#Vidage de la mémoire vive en cache (10 minutes)
*/10 * * * * echo 3 > /proc/sys/vm/drop_caches

#Mise à jour de l'heure via ntp (2 heures)
0 */2 * * * /usr/sbin/ntpdate ntp.ovh.net

# Cleaner
0 * * * * sh /home/mc/Docker/bootCleaner.sh" > crontab.txt
crontab crontab.txt
