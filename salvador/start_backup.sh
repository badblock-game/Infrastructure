#!/bin/bash
if [ "$PAM_TYPE" != "close_session" ]; then

url="https://canary.discordapp.com/api/webhooks/387757967207956491/ezE1iwJYqfIEtLEhYSNH9fBmKtg2WQzd5ZKaqiwTcjpWzyCGMsZWnu3HhG40ilGsEaTQ"
username="BadBlock Backups"
image="https://guiria.badblock.fr/images/logo_bigsmall.png"
host="`hostname`"
content="Sauvegarde en cours sur ** $host **

Services sauvegardés dans l'archive:
- \`Message\`
- \`Message\`
- \`Message\`"

curl "$url" --data-urlencode "content=$content" --data-urlencode "avatar_url=$image" --data-urlencode "username=$username"
fi