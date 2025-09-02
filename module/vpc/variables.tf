variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}
variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
}
variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
}

variable "private_subnet_names" {
  description = "List of names for private subnets"
  type        = list(string)  
  default = [ "Privatesubnet-1","PrivateSubnet-2" ]  
  
}
variable "public_subnet_names" {
  description = "List of names for public subnets"
  type        = list(string)  
  default = [ "PublicSubnet-1","PublicSubnet-2" ]  
}

