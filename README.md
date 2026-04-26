# 🎡 Vaultrix-Helm: The GitOps Source of Truth

This is the monolithic GitOps repository for the Vaultrix Platform. It serves as the single source of truth for the entire infrastructure, application configurations, and deployment logic using the **App-of-Apps** pattern with Argo CD.

## 📂 Repository Structure

- **/apps**: Contains Helm charts for all 8 microservices. Each chart manages its own deployments, services, and HPAs.
- **/infra**: Raw Kubernetes manifests for shared infrastructure (MongoDB, Gateways, StorageClasses, Namespaces).
- **/argocd**: Argo CD Application manifests (Kind: List) that bootstrap the entire platform.

## 🚀 Deployment Workflow

1. **Infrastructure**: Deploy the `infra` layer to set up MongoDB and the Gateway.
2. **Applications**: Argo CD watches the `apps` directory and synchronizes state with the cluster.
3. **Environments**: Managed via `values-dev.yaml` and `values-prod.yaml` in each chart.

## 🛠️ Key Technologies
- **Helm v3**: Package management.
- **Argo CD**: GitOps Continuous Delivery.
- **Kubernetes Gateway API**: Modern traffic routing.
- **NFS Storage**: Persistent volume management.


## 🛡️ Security & Quality
This repository is part of the Vaultrix Secure Software Development Lifecycle (SDLC):
- **SonarQube**: Static analysis & Quality Gate.
- **Snyk**: Open-source vulnerability scanning.
- **Trivy**: Container image security scanning.

## 🤝 Support
For internal support, please reach out to the DevOps team or open an issue in the **Vaultrix-Helm** repository.

---
© 2026 Vaultrix Platform. All rights reserved.
