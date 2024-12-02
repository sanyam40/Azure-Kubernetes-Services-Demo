# Most Used Commands of Kubernetes (K8s)

## 1. List Pods in the Default Namespace

Display all pods in the default namespace:

```bash
kubectl get pods
```

## 2. List Pods with Detailed Information

List all pods with more detailed information:

```bash
kubectl get pods -o wide
```

## 3. Check Node Details

List all nodes with additional details:

```bash
kubectl get nodes -o wide
```

## 4. Check Deployments

Get the status of deployments:

```bash
kubectl get deployments
```

## 5. List Services

List all services in the default namespace:

```bash
kubectl get services
```

## 6. Get Logs of Pods

Get logs of a specific pod:

```bash
kubectl logs <pod-name>
```

## 7. Describe a Pod

Get detailed information about a specific pod:

```bash
kubectl describe pod <pod-name>
```

## 8. Delete a Pod/Deployment/Service

Delete a specific pod:

```bash
kubectl delete pod <pod-name>
```

Delete a specific service:

```bash
kubectl delete svc <service-name>
```

Delete a specific deployment:

```bash
kubectl delete deployment <deployment-name>
```
