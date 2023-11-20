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

Deployment of EKS in AWS

To deploy the EKS Cluster we will use terraform as infrastructure as code tool very powerfull provide multiple avantages:

- Declarative Syntax:
Terraform uses a declarative language to describe the desired state of your infrastructure. This makes it easy to understand and manage, as you specify what you want rather than the step-by-step process of achieving it.

- Multi-Cloud Support:
Terraform is cloud-agnostic and supports multiple cloud providers (AWS, Azure, Google Cloud, etc.) and even on-premises environments. This allows you to manage infrastructure consistently across different cloud platforms.

- State Management:
Terraform maintains a state file that keeps track of the current state of your infrastructure. This state file is crucial for understanding what resources Terraform manages and allows for collaboration in a team environment.

- Modularity and Reusability:
Terraform supports modules, allowing you to modularize your infrastructure code. Modules enable reusability and maintainability by encapsulating specific sets of resources with well-defined interfaces.

- Automation and Continuous Integration:
Terraform integrates well with continuous integration/continuous deployment (CI/CD) pipelines. You can automate the testing and deployment of infrastructure changes as part of your development workflow.






