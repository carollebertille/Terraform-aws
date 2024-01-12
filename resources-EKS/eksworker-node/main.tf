resource "aws_iam_role" "nodes_general1" {
  name               = "eks-node-group-general1"
  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }, 
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "amazon_eks_worker_node_policy_general1" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.nodes_general1.name
}

resource "aws_iam_role_policy_attachment" "amazon_eks_cni_policy_general1" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.nodes_general1.name
}

resource "aws_iam_role_policy_attachment" "amazon_ec2_container_registry_read_only1" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.nodes_general1.name
}

resource "aws_eks_node_group" "nodes_blue" {
  cluster_name = format("%s-%s-%s", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])

  node_group_name = "nodeblue"
  node_role_arn   = aws_iam_role.nodes_general1.arn
  subnet_ids = [
    data.aws_subnet.private01.id,
    data.aws_subnet.private02.id
  ]

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 5
  }

  remote_access {
    ec2_ssh_key = "devops"
  }

  ami_type             = "AL2_x86_64"
  capacity_type        = "ON_DEMAND"
  disk_size            = 20
  force_update_version = false
  instance_types       = ["t2.medium"]

  labels = {
    alpha = "guru"
    name = "nodeblue"
  }

  # taints = {
  #   dedicated = {
  #     key    = "dedicated"
  #     value  = "gpuGroup"
  #     effect = "NO_SCHEDULE"
  #   }
  # }

  version = "1.24"

  depends_on = [
    aws_iam_role_policy_attachment.amazon_eks_worker_node_policy_general1,
    aws_iam_role_policy_attachment.amazon_eks_cni_policy_general1,
    aws_iam_role_policy_attachment.amazon_ec2_container_registry_read_only1,
  ]
}