# Custom Resources in Kubernetes

## Introduction:
Custom Resources (CRs) and Custom Resource Definitions (CRDs) allow users to extend the Kubernetes API to create and manage their own resources without modifying the core Kubernetes codebase. This enables the Kubernetes API to be customized to suit specific application requirements.

### Components:
- **CRD (Custom Resource Definition)**: Defines a new type of resource in Kubernetes. It specifies the structure and validation rules for the custom resource. CRDs are declarative and can be applied to a Kubernetes cluster using YAML manifests.

- **CR (Custom Resource)**: An instance of a custom resource definition. CRs are objects that users create to store specific configurations or data tailored to their applications.

- **Custom Controller**: A controller responsible for watching and reconciling custom resources. It reacts to changes in CRs and performs actions based on the desired state defined in those resources. Custom controllers are often written in GoLang using the Kubernetes client libraries.

## Workflow:
1. **CRD Deployment**: Deploy the CRD to the Kubernetes cluster using YAML manifests. This defines the schema for the custom resource type and makes it available in the cluster.
   
2. **Custom Controller**: Write and deploy a custom controller that watches for changes to custom resources. When changes occur, the controller reconciles the actual state with the desired state specified in the CR.

3. **CR Creation**: Users create instances of the custom resource (CRs) by applying YAML manifests that adhere to the CRD's schema. The CR is then validated against the CRD's definition.

4. **Controller Action**: Upon creation or modification of a CR, the custom controller takes appropriate actions based on the defined logic. This may include provisioning resources, updating configurations, or triggering other Kubernetes API operations.


