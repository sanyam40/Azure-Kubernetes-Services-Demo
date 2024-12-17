# Helm File Commands

## What is Helm File?

Helm File is a declarative specification for deploying helm charts. It lets you define and install helm charts in a single command. It is a wrapper around helm and helm-diff.

## Commands

### helmfile sync

This command will sync the helm charts defined in the helmfile.yaml file.

```bash
helmfile sync
```

It will handle helm install, upgrade, delete, and rollback operations.

It is managed by the helmfile.yaml file.

```bash
release:
  - name: my-release
    chart: ./k8s-manifests
    installed: true
```

if value of installed is true, it will install the chart, if false, it will delete the chart.
