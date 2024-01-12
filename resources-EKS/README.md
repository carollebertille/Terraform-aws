- __Module network__, in this module we will set up AWS network environment by creating different resources like a Virtual Private Cloud (VPC), Internet Gateway (IGW), Route Table, Routes, Subnets and Security Group (SG).
- __Module ekscplane__, then in this module,
      we will create
         IAM Cluster (Control Plane) Role, attach policy(AmazonEKSClusterPolicy) to the role and  provision EKS Control Plane
         IAM Node Group Role, attach policies(AmazonEKSWorkerNodePolicy, AmazonEKS_CNI_Policy, AmazonEC2ContainerRegistryReadOnly) and provision Node Group.





  
