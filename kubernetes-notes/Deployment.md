## Difference between Container, Pod, and Deployment

### Docker
- Docker is run using command-line specifications.
- It operates containers individually without built-in orchestration features.

### Pod
- Pods are defined using YAML for running specifications.
- Can contain single or multiple containers.
- Essentially, a pod shifts the specification to YAML without introducing new features.

### Deployment
- Provides advanced features such as:
  - Auto-healing
  - Auto-scaling
  - Zero-downtime deployment

In the hierarchy:
Pod -> Deployment -> ReplicaSet(Controller) -> Pods

If a pod is deleted, the deployment will create a new pod as part of auto-healing.

## Difference between ReplicaSet and Deployment
- When creating a deployment, it automatically creates a ReplicaSet.
- ReplicaSet is a Kubernetes controller responsible for maintaining auto-healing and ensuring the desired number of pods are running.

