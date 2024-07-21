#!/bin/bash

MAC_ADDRESS="24:5e:be:5a:3b:7a"

# Logging function format is <time>: <log level> - <message>
function log {
    echo "$(date '+%Y-%m-%d %H:%M:%S'): $1 - $2"
}

# Backups nas to another nas
# 1) Call wake on lan
etherwake $MAC_ADDRESS

# Wait for nfs to start
log "INFO" "Waiting for NFS to start..."

while ! ping -c 1 nas.hnatekmar.xyz; do
  sleep 1
done

TMP_MOUNT=$(mktemp -d)
mount -t nfs nas.hnatekmar.xyz:/backups $TMP_MOUNT

restic -r /mnt/pve/backups/truenas backup /mnt/pve/nas --password-file /mnt/pve/nas/secret
