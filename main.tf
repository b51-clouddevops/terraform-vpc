module "vpc" {
  source              = "./vendor/modules/vpc"  
  VPC_CIDR            = var.VPC_CIDR
  ENV                 = var.ENV
  PUBLIC_SUBNET_CIDR  = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  AZ                  = var.AZ 

}

# module "vpc" {
#   source = "git::https://github.com/b51-clouddevops/tf-module-vpc.git"
# }

# We cannot parameterise anything on source of the module. So that means we cannot use the variables.
# How can I tell to my source module to fetch the code from a branch of my choice ? By default, it only refers to main branch
# Alternatives to make it flexible ?