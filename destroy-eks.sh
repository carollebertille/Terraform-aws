#!/bin/bash
kubectl delete all --all -n argocd

cd resources-EKS/eksworker-node     
pwd

sleep 1
terraform init
terraform destroy --auto-approve
sleep 1

echo "destroy of eksworker-node was successfull"

echo "destroy EKS-Control Plane" 

cd ../ekscplane

pwd


sleep 1
terraform init
terraform destroy --auto-approve
sleep 1

echo "delete of control plan was successfull"

echo "destroy of network" 

cd ../network

pwd 
sleep 2
terraform init
terraform destroy --auto-approve
sleep 5

echo "delete of network was successfull"








   
















