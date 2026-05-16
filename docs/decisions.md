# Design Decisions

## Why GitOps (Argo CD)

Argo CD was chosen to implement GitOps principles:
- Single source of truth (Git)
- Automatic synchronization
- Self-healing capabilities
- Simplified rollback

---

## Why Helm

Helm allows:
- Reusable templates
- Environment-specific configurations
- Easier management of Kubernetes resources

---

## Why Kubernetes

Kubernetes provides:
- Container orchestration
- High availability
- Autoscaling
- Declarative configuration

---

## Why HPA

Horizontal Pod Autoscaler ensures:
- Automatic scaling under load
- Efficient resource usage
- Improved performance

---

## Why Canary Deployment

Canary deployments reduce risk by:
- Gradually exposing new versions
- Allowing testing under real traffic
- Preventing full system failures

---

## Why Trivy

Trivy helps in:
- Identifying vulnerabilities early
- Improving security posture
- Integrating DevSecOps into CI pipeline

---

## Why GitHub Actions

GitHub Actions provides:
- Seamless CI/CD integration
- Event-driven workflows
- Automation directly from repository

---

## Key Trade-offs

- Used Kind instead of cloud (EKS/GKE) for simplicity
- Implemented NGINX ingress instead of service mesh for lightweight canary
- Focused on core DevOps practices over infrastructure complexity
