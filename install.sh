#!/bin/bash
cd network
          
pwd

terraform init
sleep 1
terraform plan
sleep 1
terraform apply --auto-approve
sleep 1

echo "Creation of network was successfull"

echo "Install EKS" 

cd ..
cd ekscp

pwd

terraform init
sleep 1
terraform plan
sleep 1
terraform apply --auto-approve
sleep 1

echo "Creation of control plan was successfull"

echo "Install worker node" 

cd ../eksnodeg

pwd 
 


terraform init
sleep 2
terraform plan
sleep 2
terraform apply --auto-approve
sleep 5

echo "Creation of data plane was successfull"

echo "Import kubeconfig to the current directory " 

cd ../ekscp

aws eks update-kubeconfig --name 2526-dev-alpha   --region us-east-1

echo "check the state of the nodes"

kubectl get nodes -o wide

sleep 3





#sleep 3
#echo "install application and service-geolocation"
#kubectl apply -f geolocation1.yml
#kubectl apply -f geolocation1-svc.yml

sleep 10
kubectl get pods
kubectl get svc

sleep 5




#echo "install datadog"

#helm repo add datadog https://helm.datadoghq.com
#sleep 3
#helm repo update
#sleep 3
#helm install datadog -f datadog-values.yaml --set datadog.site='datadoghq.com' --set datadog.apiKey=b3aa21cc7f87b18792bae2b882f4a472 --set datadog.appKey=12a86d61aecd4be9152378c004eabc7b55d5df05 datadog/datadog 

#echo "Creation of datadog was successfull"

echo "Install argocd"   

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "Creation of argocd was successfull"

kubectl get pods -n argocd
kubectl get svc -n argocd  














