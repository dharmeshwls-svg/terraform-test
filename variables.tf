variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string

}
# variable "my_pc_id" {
#   description = "VPC id"
#   type = string  
# }
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)

}
variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)

}
variable "domain_name" {
  description = "The route 53 domain name"
  type        = string

}
variable "policy_name" {
  description = "The name of the Firewall manager policy"
  type        = string

}
variable "resource_type" {
  description = "The type of the resource to protect"
  type        = string
  default     = "aws::EC2::SecurityGroup"
}
variable "remediation_enabled" {
  description = "Whether to enable remediation for the policy"
  type        = bool
  default     = true
}
variable "security_service_policy_data" {
  description = "The data for the security service policy"
  type        = map(any)
}
variable "exclude_resource_tags" {
  description = "The tags to exclude from the policy"
  type        = bool
  default     = false

}

# variable "nacl_config" {
#   description = "nacl configurations "
#   type = map(map(object({
#     vpc_cidr_block       = string
#     public_subnet_cidrs  = list(string)
#     private_subnet_cidrs = list(string)
#     nacl_public_rules = object({
#       ingress = list(object({
#         rule_number = number
#         protocol    = string
#         action      = string
#         cidr_block  = string
#         from_port   = number
#         to_port     = number
#       }))
#       egress = list(object({
#         rule_number = number
#         protocol    = string
#         action      = string
#         cidr_block  = string
#         from_port   = number
#         to_port     = number
#       }))
#     })
#   })))
#   default = {

#   }
# }