# Architecture Overview

## High-Level Flow

The system follows a GitOps-based deployment architecture:

Developer → GitHub → CI Pipeline → Docker Registry → GitOps Update → Argo CD → Kubernetes Cluster

---

## Components

### 1. CI Pipeline (GitHub Actions)
- Builds Docker images
- Performs vulnerability scanning using Trivy
- Pushes images to Docker Hub
- Updates Helm values with image SHA

### 2. GitOps Layer (Argo CD)
- Watches Git repository for changes
- Automatically syncs Kubernetes state
- Self-heals drift from desired state

### 3. Kubernetes Cluster
- Hosts application workloads
- Uses namespaces for environment isolation
- Manages scaling and availability

### 4. Helm
- Templates Kubernetes manifests
- Supports environment-specific configurations

---

## Application Architecture

User → NGINX Ingress → Frontend → Backend → MySQL

---

## Deployment Strategy

- Multi-environment deployment (dev, staging, production)
- Canary deployment in development
- Progressive rollout using traffic splitting

---

## Reliability Features

- Horizontal Pod Autoscaling (HPA)
- Health checks (liveness and readiness)
- Argo CD self-healing
- Deployment verification scripts

---

## Observability

- Prometheus collects metrics
- Grafana visualizes performance
- Logs and events used for debugging

---

## Security

- Container scanning using Trivy
- Dependency vulnerability fixes
