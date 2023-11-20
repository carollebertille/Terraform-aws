# AWS Elastic Kubernetes Service (EKS)
![amazoneks](https://github.com/carollebertille/aws-eks/assets/99866372/453f7dca-b78e-4b21-914a-fe90fc162008)

## Amazon Web Services (AWS)

[Amazon Web Services (AWS)](https://aws.amazon.com/what-is-aws/?nc1=h_ls) is the world’s most comprehensive and broadly adopted cloud platform, offering over 175 fully featured services from data centers globally. Millions of customers—including the fastest-growing startups, largest enterprises, and leading government agencies—are using AWS to lower costs, become more agile, and innovate faster.

## AWS Elastic Kubernetes Service

[AWS Elastic Kubernetes Services (EKS)](https://aws.amazon.com/eks/?nc1=h_ls) is a fully managed [Kubernetes](https://kubernetes.io/) service provided by AWS. 

<br>

# Description of project
This tutorial will demonstrate how to create a **AWS Elastic Kubernetes Service (EKS)** managed cluster. This will be done in 3 mains steps :

- __Networking Setup__, in this section we will set up AWS network environment by creating different resources like a Virtual Private Cloud (VPC), Internet Gateway (IGW),  Nat Gateway (NGW) Route Table, Routes, Subnets and Security Group (SG).

- __AWS EKS Cluster__, then in this section, we will create IAM Cluster Control Plane Role, provision EKS Control Plane, IAM Node Group Role and provision Node Group Node Group is the name given by AWS to describe group of worker nodes).

- __Cluster Testing__, finally we will deploy a wordpress application in the EKS Cluster to verify that it's working as expected.

<br>

Deployment 

To deploy the EKS Cluster we purpose two methods : 

-  [Infrastructure as Code (IaC)]  with terraform CloudFormation,



