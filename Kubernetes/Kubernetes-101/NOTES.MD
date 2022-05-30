CH1
Minikube start

For HA, you want 3 for consensus for database

3+ masters + workers

Kubectl get nodes

Master is the default

kubectl create deployment hello-k8s --image=geerlingguy/kube101:intro

deployment.apps/hello-k8s created

Let you see the application - Kubernetes runs everything inside with private network in the cluster, you won’t see anything unless you expose it

kubectl expose deployment hello-k8s --type=NodePort --port=80
service/hello-k8s exposed

❯ kubectl get services hello-k8s
NAME        TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
hello-k8s   NodePort   10.106.47.176   <none>        80:30703/TCP   22s

❯ minikube ip
192.168.49.2

Minikube service hello-k8s

Minikube delete

CH2
