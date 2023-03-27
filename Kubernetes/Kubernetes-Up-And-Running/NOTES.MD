# Kubernetes Up and Running 3rd Edition Notes

## Chapter 1
Kubernetes is an open source orchestrator for deploying containerized applications. It is for building reliable, scalable distributed systems. More and more services are delivered over the network via API. These APIs are often delivered by a distributed system. These API ust be highly reliable (cannot fail), available, and scalable.

Key concepts
Immutability
Declarative Configuration
Online self-healing systems
Shared re-useable libraries and tools

Immutable - System doesn't change
Declarative - Code defines the state not define the execution (imperative)


## Chapter 2

## Chapter 3
# Google Cloud
1. Set a default zone
`gcloud config set compute/zone us-west1-a`

2. Create cluster
`gcloud container clusters create kuar-cluster --num-nodes=3`

3. Get credentials for the cluster
`gcloud container clusters get-credentials kuar-cluster`

4. List all the worker nodes
`kubectl get nodes`

4a. You can describe a specific node
`kubectl describe nodes {name}`


Many of the components that make up kubernetes cluster are deployed using k8s itself
Proxy must be present on every node in the cluster. Kubernetes has an API object named daemonset to accomplish this.
`kubectl get daemonSets --namespace=kube-system kube-proxy`

Kubernetes also runs a DNS server which provides naming and discovery for the services that are defined in the cluster.

## Chapter 4
Kubernetes uses namespaces to organize objects in the cluster

If you want to change the default namespace more permanently, you can use a context. this gets recorded in a kubectl configuration file usually located at $HOME/.kube/config

`kubectl config set-context my-context --namespace=mystuff`
`kubectl config use-context my-context`

