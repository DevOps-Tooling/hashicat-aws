module "vpc" {
  source  = "app.terraform.io/krishan-training/vpc/aws"
  version = "2.48.0"
  # insert required variables here
  cidr_block = var.address_space
  enable_dns_hostnames = true

  tags = {
    name = "${var.prefix}-vpc"
    Billable = "true"
    Department = "DevOps"
  
}
}