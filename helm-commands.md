# Helm Commands

Helm is a package manager for Kubernetes, providing an abstract framework to manage application deployment on Kubernetes clusters. It streamlines the installation and management of Kubernetes applications.

## Helm Create

```bash
helm create <chart-name>
```

Example:

```bash
helm create demo-aks-helm
```

## Helm Install

```bash
helm install <release-name> <chart-name>
```

Example:

```bash
helm install demo-aks-helm ./k8s-manifests
```

## Helm List

```bash
helm list -a
```

## Helm Upgrade

If you make changes to the Helm chart, you can upgrade the release to apply the changes.

```bash
helm upgrade <release-name> <chart-name>
```

Example:

```bash
helm upgrade demo-aks-helm ./k8s-manifests
```

## Helm Rollback

If you need to rollback to a previous version of the release, you can use the rollback command.

```bash
helm rollback <release-name> <revision-number>
```

Example:

```bash
helm rollback demo-aks-helm 1
```

## Helm Debug & Dry Run

You can use the `--dry-run` and `--debug` flags to see the output of the Helm template without actually deploying the resources.

Example:

```bash
helm install demo-aks-helm ./k8s-manifests --dry-run --debug
```

## Helm Template

You can use the `template` command to render the Helm template without deploying the resources.It is just for validation purposes.

```bash
helm template <chart-name> --output-dir <output-dir>
```

Example:

```bash
helm template demo-aks-helm ./k8s-manifests --output-dir ./output
```

## Helm Lint

You can use the `lint` command to validate the Helm chart.

```bash
helm lint <chart-name>
```

## Helm Uninstall

```bash
helm uninstall <release-name>
```

Example:

```bash
helm uninstall demo-aks-helm
```
