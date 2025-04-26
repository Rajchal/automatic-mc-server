#!/bin/bash

# === Settings ===
WORLD_FILE="your world file"
BACKUP_TAR="backup to send tar"

REMOTE_USER="root"
REMOTE_SERVER="your.backup.server.ip"
REMOTE_PASSWORD="yourpassword"
REMOTE_PATH="/path/on/backup/server"

# === Create Backup ===
echo "[*] Creating backup..."

# === Send Backup ===
echo "[*] Sending backup to remote server..."
sshpass -p "$REMOTE_PASSWORD" tar -czvf "$WORLD_FILE" "$BACKUP_TAR"

# === Cleanup ===
echo "[*] Cleaning up local backup..."
rm "$BACKUP_PATH"

echo "[+] Backup completed successfully!"

