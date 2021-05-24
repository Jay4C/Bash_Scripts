#!/bin/bash

# follow these steps : https://sawtooth.hyperledger.org/docs/core/releases/latest/app_developers_guide/kubernetes.html

sudo curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

sudo chmod +x kubectl

sudo cp kubectl /usr/local/bin/

sudo rm kubectl

sudo curl -Lo minikube https://storage.googleapis.com/minikube/releases/v1.2.6/minikube-linux-amd64

sudo chmod +x minikube

sudo cp minikube /usr/local/bin/

sudo rm minikube

minikube start

kubectl run hello-minikube --image=k8s.gcr.io/echoserver:1.10 --port=8080

kubectl expose deployment hello-minikube --type=NodePort

kubectl get pods

curl $(minikube service hello-minikube --url)

kubectl delete services hello-minikube

kubectl delete deployment hello-minikube

wget -O sawtooth-kubernetes-default.yaml https://sawtooth.hyperledger.org/docs/core/releases/latest/app_developers_guide/sawtooth-default.yaml

minikube status

kubectl apply -f sawtooth-kubernetes-default.yaml

minikube dashboard

kubectl exec -it $(kubectl get pods | awk '/sawtooth-0/{print $1}') --container sawtooth-shell -- bash

curl http://localhost:8008/blocks

sawtooth block list

sawtooth block show {BLOCK-ID}

intkey create_batch --count 10 --key-count 5

intkey load -f batches.intkey

sawtooth block list

intkey create_batch --count 6 --key-count 3

sawtooth batch submit -f batches.intkey

sawtooth block list

sawtooth block show 327aede38ab395bbdba711911414a9a68166b5378af4bdc15206089a2adf0cb62448f9fc4d749f0c8677849f7fe19c734f05f86687201666e8899437f903102d

sawtooth state list --format csv

sawtooth state show {STATE_ADDRESS}

kubectl exec -it $(kubectl get pods | awk '/sawtooth-0/{print $1}') --container sawtooth-validator -- bash

ps -A fw

kubectl exec -it $(kubectl get pods | awk '/sawtooth-0/{print $1}') --container sawtooth-validator -- bash

ls -1 /var/log/sawtooth

kubectl exec -it $(kubectl get pods | awk '/sawtooth-0/{print $1}') --container sawtooth-intkey-tp-python -- bash

ls -1 /var/log/sawtooth

kubectl delete -f sawtooth-kubernetes-default.yaml

minikube stop

minikube delete
