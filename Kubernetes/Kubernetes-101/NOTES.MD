CH1
Start minikube
`minikube start`

For HA, you want 3 for consensus for database

3+ masters + workers

`kubectl get nodes`

Master is the default

`kubectl create deployment hello-k8s --image=geerlingguy/kube101:intro`

deployment.apps/hello-k8s created

Let you see the application - Kubernetes runs everything inside with private network in the cluster, you won’t see anything unless you expose the said private network

`kubectl expose deployment hello-k8s --type=NodePort --port=80`
nodeport takes a random port and assigns it to a port number
service/hello-k8s exposed

`kubectl get services hello-k8s`
NAME        TYPE       CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
hello-k8s   NodePort   10.105.175.199   <none>        80:32598/TCP   61s

`minikube ip`
192.168.49.2

`minikube service hello-k8s`

`minikube delete`

CH2
`docker build -t geerlingguy/kube-101:intro .`
`docker images`

`docker run --rm -p 80:80 geerlingguy/kube-101:intro`