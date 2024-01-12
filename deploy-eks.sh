#!/bin/bash

cd resources-EKS/network       
pwd
terraform init
sleep 1
terraform apply --auto-approve
sleep 1

echo "Creation of network was successfull"

echo "Install EKS-Control Plane" 

cd ../ekscplane

pwd

terraform init
sleep 1
terraform apply --auto-approve
sleep 1

echo "Creation of control plan was successfull"

echo "Install worker node" 

cd ../eksworker-node

pwd 

terraform init
sleep 2
terraform apply --auto-approve
sleep 5

echo "Creation of data plane was successfull"

echo "Import kubeconfig to the current directory " 


aws eks update-kubeconfig --name 2021-dev-EKS   --region us-east-1

echo "check the state of the nodes"

kubectl get nodes

sleep 5


echo "Install argocd"   

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Creation of argocd was successfull"

sleep 10

kubectl get pods -n argocd
kubectl get svc -n argocd 

kubectl patch service argocd-server -n argocd --type='json' -p '[{"op": "replace", "path": "/spec/type", "value": "LoadBalancer"}]'


kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo


aws s3 ls

   
















