# 🔐 Vaultrix Sealed Secrets Guide

We use **Bitnami Sealed Secrets** to securely store sensitive data in Git.

## 🏗️ How it works
1. **Sealed Secrets Controller**: Runs in the cluster (namespace: `sealed-secrets`).
2. **kubeseal CLI**: Used by engineers to encrypt (seal) plain secrets.
3. **SealedSecret CRD**: The encrypted YAML you commit to Git.
4. **Decryption**: The controller in the cluster decrypts the `SealedSecret` back into a standard Kubernetes `Secret`.

## 🛠️ Setup kubeseal
Download the binary for your OS:
[kubeseal GitHub Releases](https://github.com/bitnami-labs/sealed-secrets/releases)

## 🆕 Creating a New Secret
1. Create a temporary local secret YAML:
   ```bash
   kubectl create secret generic my-secret --from-literal=password=Vaultrix@123! --dry-run=client -o yaml > my-secret.yaml
   ```
2. Seal the secret:
   ```bash
   kubeseal --format=yaml < my-secret.yaml > sealed-secret.yaml
   ```
3. Commit `sealed-secret.yaml` and delete the plain `my-secret.yaml`.

## 🔄 Updating an Existing Secret
Use the `--merge-into` flag or just re-seal the entire object.

## ⚠️ Important Rules
- **NEVER** commit plain Secrets to this repository.
- Use **ArgoCD Sync Waves** to ensure the controller is healthy before apps deploy.
- Dev and Prod use different encryption keys (automatically handled by the respective controllers).
