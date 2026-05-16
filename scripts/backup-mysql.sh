#!/bin/bash
set -e

ENV=${1:-dev}
NAMESPACE="skillpulse-$ENV"
BACKUP_DIR="backups/mysql/$ENV"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE="$BACKUP_DIR/skillpulse-$TIMESTAMP.sql"

mkdir -p "$BACKUP_DIR"

echo "Creating MySQL backup for namespace: $NAMESPACE"

kubectl exec -n "$NAMESPACE" mysql-0 -- \
  sh -c 'mysqldump --no-tablespaces -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"' \
  > "$BACKUP_FILE"

echo "Backup created: $BACKUP_FILE"
