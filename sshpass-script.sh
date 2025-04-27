#!/bin/bash

# === Settings ===
WORLD_FILE="your world file"
BACKUP_TAR="backup to send tar"

REMOTE_USER="root"
REMOTE_SERVER="your.backup.server.ip"
PRIVATE_KEY="/path/to/your/private/key"

# Create a tarball of the world file
tar -czvf "$BACKUP_TAR" "$WORLD_FILE"

# Sync the tarball to the remote server
rsync -avz -e "ssh -i $PRIVATE_KEY" "$BACKUP_TAR" "$REMOTE_USER"@"$REMOTE_SERVER":"/minecraft/backup"



