#!/bin/bash
set -e

ENV=$1
BACKUP_FILE=$2
NAMESPACE="skillpulse-$ENV"

if [ -z "$ENV" ] || [ -z "$BACKUP_FILE" ]; then
  echo "Usage: ./scripts/restore-mysql.sh dev|stg|prd <backup-file>"
  exit 1
fi

if [ ! -f "$BACKUP_FILE" ]; then
  echo "Backup file not found: $BACKUP_FILE"
  exit 1
fi

echo "Restoring MySQL backup to namespace: $NAMESPACE"

kubectl exec -i -n "$NAMESPACE" mysql-0 -- \
  sh -c 'mysql -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE"' \
  < "$BACKUP_FILE"

echo "Restore completed from: $BACKUP_FILE"
