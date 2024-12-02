# Kubernetes Basics

## What is Kubernetes?
Kubernetes is a container orchestration platform designed to automate the deployment, scaling, and management of containerized applications. Instead of managing individual containers, Kubernetes operates at the pod level, providing a higher level of abstraction for container management.

## Issues with Docker Containers
- Containers are ephemeral and can die and revive at any time.
- Docker, being installed on a single host, can lead to memory and CPU issues.
- Docker lacks built-in auto-healing and auto-scaling capabilities.
- Limited enterprise-level support provided by Docker.

## Docker issues solved with Kubernetes
- Kubernetes operates on a cluster-based architecture, with a master node managing multiple worker nodes.
- Replication Controllers (or Replica Sets) ensure the desired number of pods are maintained.
- Kubernetes provides mechanisms for self-healing and scaling.

## Kubernetes Architecture
### Control Plane/Master Node
- API Server (Core)
- Scheduler
- Controller Manager
- etcd (Key-Value Store)

### Data Plane/Worker Node
- Kubelet
- Kube Proxy
- Container Runtime

## Components of Worker Node
- Pod: The smallest unit in Kubernetes, managed by Kubelet.
- Container Runtime: Docker is not mandatory; alternatives like containerd or cri-o can be used.
- Kube-proxy: Responsible for networking.

## Cloud Controller Manager (CCM)
- Manages interactions between Kubernetes and underlying cloud providers.
- Handles tasks like creating load balancers or storage services.
- Not necessary if Kubernetes is running on-premise.

## Basic Terminology of Kubernetes
1. **Pod**
   - Specifies how to run a container.
   - Defined in a pod.yaml file using a declarative YAML approach.
   - Can contain one or more containers, sharing networking and storage.
   
2. **kubectl**
   - Command-line tool for interacting with Kubernetes.

## Commands
- `kubectl get all`: Retrieves all resources in the cluster.
- `kubectl get pods`: Retrieves all pods.
- `kubectl get pods -o wide`: Retrieves pods with additional details.
- `kubectl delete pod nginx`: Deletes a specific pod named "nginx".

