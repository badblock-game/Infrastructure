#!/bin/bash
if [ "$PAM_TYPE" != "close_session" ]; then

url="https://canary.discordapp.com/api/webhooks/XXX"
        username="BadBlock Security"
        image="https://static.badblock.fr/images/logo_bigsmall.png"
        host="`hostname`"
        content="Connexion SSH réussie sur ** $host **
Utilisateur: ** \`$PAM_USER\` ** | Adresse IP: ** \`$PAM_RHOST\` **"

curl "$url" --data-urlencode "content=$content" --data-urlencode "avatar_url=$image" --data-urlencode "username=$username"
fi
