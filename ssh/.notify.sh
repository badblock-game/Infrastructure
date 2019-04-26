#!/bin/bash
if [ "$PAM_TYPE" != "close_session" ]; then

        url="https://canary.discordapp.com/api/webhooks/XXXX/slack"
        username="BadBlock"
        host="`hostname`"
        content="\"attachments\": [ { \"mrkdwn_in\": [\"text\", \"fallback\"], \"fallback\": \"Connexion SSH réussie: $PAM_USER connected to \`$host\`\", \"text\": \"Connexion SSH réussie | \`Machine: $host\`\", \"fields\": [ { \"title\": \"Utilisateur\", \"value\": \"$PAM_USER\", \"short\": true }, { \"title\": \"Adresse IP\", \"value\": \"$PAM_RHOST\", \"short\": true } ], \"color\": \"#27ae60\" } ]"
        curl -X POST --data-urlencode "payload={\"username\": \"$username\", $content}" $url
fi