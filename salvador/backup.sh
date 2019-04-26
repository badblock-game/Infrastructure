#!/bin/bash
test -x /usr/sbin/backup-manager || exit 0
/usr/sbin/backup-manager -c /etc/salvador/backup.conf