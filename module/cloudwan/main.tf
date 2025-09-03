/*
  Terraform Module: aws-cloudwan
  This module provisions AWS Cloud WAN core network and related resources.
  Usage:
    module "cloudwan" {
      source                 = "./aws-cloudwan"
      core_network_name      = "example-cloudwan"
      description            = "My AWS CloudWAN Core Network"
      segments               = ["prod", "dev"]
      edge_locations         = ["us-east-1", "us-west-2"]
      tags                   = { Environment = "prod" }
    }
*/


resource "aws_networkmanager_core_network" "my_network" {
  global_network_id = aws_networkmanager_global_network.globalnetwork.id
  description       = var.description
  tags              = var.tags


}

resource "aws_networkmanager_global_network" "globalnetwork" {
  description = "Global network for CloudWAN"
  tags        = var.tags
}


 


