variable "ingress_rule" {
  description = "List of ingress rules for the security group"
    type         = list(object({
    rule_number  = number
    from_port    = number
    to_port      = number
    protocol     = string
    action      = string
    cidr_blocks  = list(string)
  }))
default = [ ]
}
variable "egress_rule" {
  description = "List of egress rules for the security group"
    type         = list(object({
    rule_number  = number
    from_port    = number
    to_port      = number
    protocol     = string
    action       = string
    cidr_blocks  = list(string)
  }))
default = [ ]
}

variable "my_vpc_id" {
  type = string
  default = ""
}