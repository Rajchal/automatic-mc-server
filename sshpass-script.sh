#!/bin/bash

# === Settings ===
WORLD_FILE="your world file"
BACKUP_TAR="backup to send tar"

REMOTE_USER="root"
REMOTE_SERVER="your.backup.server.ip"
REMOTE_PASSWORD="yourpassword"


sshpass -p "$REMOTE_PASSWORD" tar -czvf "$WORLD_FILE" "$BACKUP_TAR"

sshpass -p "$REMOTE_PASSWORD" rsync -avz "$REMOTE_USER"@"$REMOTE_SERVER":"BACKUP_TAR" "/minecraft/backup"



