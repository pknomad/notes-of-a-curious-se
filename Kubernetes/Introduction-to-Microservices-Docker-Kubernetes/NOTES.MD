# Microservices
- Separate business logic functions
- Several smaller applications instead of one big program
- Communicate via well defined API (usually HTTP)

- Advantages
- Language independent
- Fast iterations
- Small teams
- Fault isolation
- Pair well with containers
- SCALABLE

- Disadvantages
- Complex networking
- Overhead w/ databases and servers

# Docker
- Open platform for developers and sysadmins to build, ship, and run distributed applications on any computer. Containers are a way to package software in a format that can run isolated on a shared operating system. Unlike VMs, containers do not bundle a full OS. Only libraries and settings are required and thus allow lightweight and efficient systems that are self-contained and guranteed to be idempotent.

- Dockerfile
- Describes the build process for an image
- Can be run to automatically create an image
- Contains all the commands necessary to build the image and run your application

# Container Orchestration

# Kubernetes
- Open source system for automating deployment, scaling, and management of containerized applications
- Node - Kubelet, communicates with master, runs pods
- Pod - runs 1+ containers, exist on a node
- Service - handles requests, usually a load balancer
- Deployment - Defines desired state - k8s handles the rest


Deployment YAML
apiVersion: apps/v1beta1
kind: Deployment
metadata:
  name: nginx-deployment
  spec:
    replicas: 3
    templates:
      metadata:
        labels:
          app: nginx
      spec:
        containers:
          - name: nginx
            image: nginx: 1.7.9
            ports:
              - containerPort: 80

