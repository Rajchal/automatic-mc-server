#!/bin/bash

# === Settings ===
WORLD_FILE="your world file"
BACKUP_TAR="backup to send tar"

REMOTE_USER="root"
REMOTE_SERVER="your.backup.server.ip"
REMOTE_PASSWORD="yourpassword"


# Create a tarball of the world file
sshpass -p "$REMOTE_PASSWORD" tar -czvf "$BACKUP_TAR" "$WORLD_FILE"

# Sync the tarball to the remote server
sshpass -p "$REMOTE_PASSWORD" rsync -avz "$BACKUP_TAR" "$REMOTE_USER"@"$REMOTE_SERVER":"/minecraft/backup"



