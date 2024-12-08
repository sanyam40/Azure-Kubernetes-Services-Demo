# Azure Kubernetes Service (AKS)

This repository showcases the deployment of a single-tier application using Azure Kubernetes Service (AKS).

## Complete Workflow

This workflow diagram outlines an automated CI/CD process for deploying containerized applications to Azure Kubernetes Service (AKS). It demonstrates the seamless integration of version control, continuous integration, containerization, and scalable deployment.

![ACR Workflows 1 of 1](assets/projectWorkflow.jpg)

### Workflow Descriptions

**1. Development Stage**:
Developers commit code changes to the GitHub repository, initiating the automated pipeline.

**2. Continuous Integration & Containerization**:
Upon code push, GitHub Actions triggers a build process that creates a Docker image. The image is then securely pushed to Azure Container Registry (ACR) for deployment.

**3. Infrastructure Deployment**:
Terraform scripts provision the Azure infrastructure, including Kubernetes clusters, ensuring an automated, repeatable, and scalable setup.

**4. Kubernetes Deployment**:
The Kubernetes cluster fetches the Docker image from ACR and deploys it as pods, creating scalable and resilient microservices.

**5. Load Balancing & Traffic Management**:
Traffic is managed through an Azure Load Balancer, distributing requests evenly across pods, ensuring high availability and reliability. The external IP is exposed for seamless access.

## Step-by-Step Guide

### Run Terraform Scripts for Creating Azure Resources

To initialize the Terraform deployment, run:

```sh
terraform init
```

![Description](assets/tf-1.png)

To validate the Terraform deployment, run:

```sh
terraform validate
```

![Description](assets/tf-2.png)

To plan the Terraform deployment, run:

```sh
terraform plan
```

![Description](assets/tf-3.png)


To apply the Terraform deployment, run:

```sh
terraform apply
```

![Description](assets/tf-4.png)

#### Verify the Azure Resources

![Description](assets/tf-5.png)
