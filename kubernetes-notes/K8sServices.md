## Why We Need Service in Kubernetes

- When a pod goes down, Kubernetes automatically creates a new pod as part of auto-healing. However, the pod's IP changes, which can disrupt communication.
- Services are needed to maintain a consistent IP for uninterrupted communication.
- By creating a Service on top of a Deployment, Kubernetes provides a consistent endpoint for communication.

### Service Discovery
- When a service is created, it assigns labels and selectors to the IP addresses of the pods.
- This allows the service to redirect traffic to new pod IPs when the old pods go down.

### Exposing to the World
- Services can be exposed to the external world, allowing access from outside the Kubernetes cluster.

### Types of Services
1. **ClusterIP**
   - Used for service discovery and load balancing within the cluster.
2. **NodePort**
   - Allows access to services from within the organization.
3. **LoadBalancer**
   - Enables access from outside the organization.
   - Works with cloud providers like AWS, Azure, and GCP, but not on local machines.
   - In AWS, for example, it works with services like EKS and ELB to assign a public IP address.

