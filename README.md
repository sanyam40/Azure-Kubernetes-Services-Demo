# Azure Kubernetes Service (AKS)

This Repository showcase working of Azure Kubernetes Service (AKS) Deployment with a Single Tier Application.

## Complete Workflow

This workflow diagram outlines an automated CI/CD for deploying containerized applications to Azure Kubernetes Service (AKS). It demonstrates the seamless integration of version control, continuous integration, containerization, and scalable deployment.

![ACR Workflows 1 of 1](https://github.com/user-attachments/assets/e7ed945a-895c-4f6c-831c-a2acfb8761e2)

### Workflow Descriptions

**1.Development Stage**
Developers commit code changes to the GitHub repository, initiating the automated pipeline.

**2.Continuous Integration & Containerization**
Upon code push, GitHub Actions triggers a build process that creates a Docker image. The image is then securely pushed to Azure Container Registry (ACR) for deployment.

**3.Infrastructure Deployment**
Terraform scripts provision the Azure infrastructure, including Kubernetes clusters, ensuring an automated, repeatable, and scalable setup.

**4.Kubernetes Deployment**
The Kubernetes cluster fetches the Docker image from ACR and deploys it as pods, creating scalable and resilient microservices.

**5.Load Balancing & Traffic Management**
Traffic is managed through an Azure Load Balancer, distributing requests evenly across pods, ensuring high availability and reliability. The external IP is exposed for seamless access.

## Steps to Deploy on AKS

### 1. Create a free Kubernetes Cluster (via Azure CLI)

```bash
az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $CLUSTER_NAME \
    --tier free \
    --generate-ssh-keys
```

### 2. Configure Azure AKS Credentials

Configure the `kubectl` context to use an Azure Kubernetes Service (AKS) cluster:

```bash
az aks get-credentials --resource-group <resource-group-name> --name <aks-cluster-name>


Exmple : az aks get-credentials --resource-group delete-me --name aks-demo

az aks get-credentials --resource-group delete-me --name aks-demo
```

### 3. Check Current Context

Verify the current context being used by `kubectl`:

```bash
kubectl config current-context

```

### 4. Create Docker Registry Secret

Create a Docker registry secret to pull images from a private repository:

```bash
kubectl create secret docker-registry regcred --docker-server=<server> --docker-username=<username> --docker-password=<password>

```
