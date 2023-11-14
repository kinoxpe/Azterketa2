#!/bin/bash

# Kopia non egingo den
BACKUP_DIR="/var/tmp/Backups"

# Gaurko data
TODAYS_DATE=$(date "+%Y-%m-%d")

# Karpeta berria sortu
mkdir -p $BACKUP_DIR/$TODAYS_DATE

# Kopia egin
rsync -av --link-dest="$BACKUP_DIR/$(date -d 'yesterday' '+%Y-%m-%d')" /home/luken/Segurtasuna/ "$BACKUP_DIR/$TODAYS_DATE/"

