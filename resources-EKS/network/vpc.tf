resource "aws_vpc" "vpcproject" {
  
  cidr_block = var.cidr_block

 
  instance_tenancy = "default"

  
  enable_dns_support = true
  enable_dns_hostnames = true

 tags = merge(var.common_tags, {
    Name = format("%s-%s-%s-vpc", var.common_tags["AssetID"], var.common_tags["Environment"], var.common_tags["Project"])
    },
  )
}
