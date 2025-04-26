#!/bin/bash

# === Settings ===
BACKUP_FOLDER="/opt/minecraft"     # <-- Your server folder
BACKUP_NAME="mc-backup-$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
BACKUP_PATH="/tmp/$BACKUP_NAME"

REMOTE_USER="backupuser"
REMOTE_SERVER="your.backup.server.ip"
REMOTE_PASSWORD="yourpassword"
REMOTE_PATH="/path/on/backup/server"

# === Create Backup ===
echo "[*] Creating backup..."
tar -czvf "$BACKUP_PATH" "$BACKUP_FOLDER"

# === Send Backup ===
echo "[*] Sending backup to remote server..."
sshpass -p "$REMOTE_PASSWORD" scp "$BACKUP_PATH" "$REMOTE_USER@$REMOTE_SERVER:$REMOTE_PATH"

# === Cleanup ===
echo "[*] Cleaning up local backup..."
rm "$BACKUP_PATH"

echo "[+] Backup completed successfully!"

