# Creating VPC 
module "vpc" {
  source               = "./module/vpc"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

}

# creating Network ACL
module "nacl" {
  source    = "./module/nacl"
  my_vpc_id = module.vpc.my_vpc_id

}

# Creating route 53 zone
module "zone" {
  source      = "./module/zone"
  domain_name = var.domain_name
}

#creating Security Group
module "sg" {
  source = "./module/sg"
  vpc_id = module.vpc.my_vpc_id

}

#creating EC2 instance
module "ec2" {
  source  = "./module/ec2"
  sg_id   = module.sg.sg_id
  subnets = module.vpc.public_subnets

}

module "alb" {
  source    = "./module/alb"
  sg_id     = module.sg.sg_id
  subnets   = module.vpc.public_subnets
  vpc_id    = module.vpc.my_vpc_id
  instances = module.ec2.instances
}
module "rout53record" {
  source                 = "./module/route53record"
  hosted_zone_id         = module.zone.zone_id
  record_name            = "web-elb"
  load_balancer_dns_name = module.alb.aws_alb_dns_name
  load_balance_zone_id   = module.alb.aws_alb_zone_id

}

module "sgfw" {
  source                       = "./module/sgfw"
  policy_name                  = var.policy_name
  resource_type                = var.resource_type
  remediation_enabled          = var.remediation_enabled
  security_service_policy_data = var.security_service_policy_data
  exclude_resource_tags        = var.exclude_resource_tags
}


module "cloudwan" {
  source                 = "./module/cloudwan"
  core_network_name      = var.core_network_name
  description            = var.description
  segments               = var.segments
  edge_locations         = var.edge_locations
  tags                   = var.tags
}