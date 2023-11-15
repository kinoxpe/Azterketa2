#!/bin/bash

# Zerbitzariaren ip-a eta non egingo diren kopiak
REMOTE_SERVER="asier@34.142.19.23"
REMOTE_BACKUP_DIR="/var/tmp/Backups"

# Gaurko data lortu
TODAYS_DATE=$(date "+%Y-%m-%d")

# Direktorio berria sortu zerbitzarian.
ssh "$REMOTE_SERVER" "mkdir -p $REMOTE_BACKUP_DIR/$TODAYS_DATE"

# Kopia egin zerbitzarian
rsync -av --link-dest="$REMOTE_BACKUP_DIR/$(date -d 'yesterday' '+%Y-%m-%d')" /home/asier/Segurtasuna/ "$REMOTE_SERVER:$REMOTE_BACKUP_DIR/$TODAYS_DATE/"

