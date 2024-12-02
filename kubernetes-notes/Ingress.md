# Why Do We Need Kubernetes Ingress?

## i. Need for Ingress:

In Kubernetes (K8s), the absence of certain features provided by enterprise load balancers necessitates the use of Ingress for external access management. These features include:

- **Session Affinity (Sticky Sessions):** Essential for applications requiring session persistence, where subsequent requests from the same client are directed to the same backend pod.
- **Domain-Based Routing:** Allows routing traffic based on different domain names to different services within the cluster.
- **Whitelisting and Blacklisting:** Implement access control policies to control which clients can access specific services.
- **Rate-Based Routing:** The ability to route traffic based on request rate, useful for controlling and optimizing resource utilization.
  
## ii. Avoiding Per-Service Charges:

Creating services of type LoadBalancer for each service incurs charges from cloud providers, as they typically charge for static IP addresses associated with each LoadBalancer. In contrast, using Ingress allows for more cost-effective management of external access to multiple services through a single load balancer.

## What is Kubernetes Ingress?

In Kubernetes, Ingress is a crucial component for managing external access to services running within a cluster. It facilitates load balancing and routing based on incoming requests. Here's an overview:

- **Ingress Controller Deployment:** Users deploy an Ingress controller within the cluster, responsible for handling the Ingress rules defined in YAML configuration files.
- **Ingress Controller Service:** Various servers like Nginx, HAProxy, Traefik, etc., provide Ingress controller services.
- **Functionality:** Ingress controllers act as a combination of load balancer and API gateway, translating Ingress rules into configurations for the underlying infrastructure to enable efficient traffic management and routing.

In essence, Kubernetes Ingress provides advanced traffic management capabilities, allowing for flexible routing, access control, and cost-effective external access management to services within a Kubernetes cluster.
