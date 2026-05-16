#!/bin/bash
set -e

ENV=${1:-dev}
NAMESPACE="skillpulse-$ENV"

echo "Verifying rollout in namespace: $NAMESPACE"

kubectl rollout status deployment/backend -n "$NAMESPACE" --timeout=120s
kubectl rollout status deployment/frontend -n "$NAMESPACE" --timeout=120s
kubectl rollout status statefulset/mysql -n "$NAMESPACE" --timeout=120s

kubectl get pods -n "$NAMESPACE"

echo "Kubernetes rollout health check passed for $ENV"
