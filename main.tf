module "vpc" {
  source               = "./module/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

}


module "nacl" {
  source    = "./module/nacl"
  my_vpc_id = module.vpc.my_vpc_id

}

