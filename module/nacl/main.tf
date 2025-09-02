resource "aws_network_acl" "nacl" {
  vpc_id = var.my_vpc_id

dynamic "ingress" {
    for_each = var.ingress_rule
    content {
      rule_no    = ingress.value.rule_number
      protocol   = ingress.value.protocol
      action     = ingress.value.action
      cidr_block = ingress.value.cidr_blocks
      from_port  = ingress.value.cidr_blocksfrom_port  
      to_port    = ingress.value.to_port            
  
    }
  }

dynamic "egress" {
    for_each = var.egress_rule
    content {
      rule_no    = ingress.value.rule_number
      protocol   = ingress.value.protocol
      action     = ingress.value.action
      cidr_block = ingress.value.cidr_blocks
      from_port  = ingress.value.cidr_blocksfrom_port  
      to_port    = ingress.value.to_port            
  
    }
  }  
}  




