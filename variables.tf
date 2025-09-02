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