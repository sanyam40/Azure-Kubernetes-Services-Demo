# Helm Commands

Helm is a package manager for Kubernetes, providing an abstract framework to manage application deployment on Kubernetes clusters. It streamlines the installation and management of Kubernetes applications.

## Helm Install

```bash
helm install <release-name> <chart-name>
```

Example:

```bash
helm install demo-aks-helm ./k8s-manifests
```

## Helm Uninstall

```bash
helm uninstall <release-name>
```

Example:

```bash
helm uninstall demo-aks-helm
```