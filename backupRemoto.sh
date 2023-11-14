#!/bin/bash

# Zerbitzariaren ip-a eta non egingo diren kopiak
REMOTE_SERVER="luken@35.228.163.18"
REMOTE_BACKUP_DIR="/var/tmp/Backups"

# Gaurko data lortu
TODAYS_DATE=$(date "+%Y-%m-%d")

# Direktorio berria sortu zerbitzarian.
ssh "$REMOTE_SERVER" "mkdir -p $REMOTE_BACKUP_DIR/$TODAYS_DATE"

# Kopia egin zerbitzarian
rsync -av --link-dest="$REMOTE_BACKUP_DIR/$(date -d 'yesterday' '+%Y-%m-%d')" /home/luken/Segurtasuna/ "$REMOTE_SERVER:$REMOTE_BACKUP_DIR/$TODAYS_DATE/"

