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

variable "core_network_name" {
  description = "Name for the AWS CloudWAN Core Network"
  type        = string
  default = "my-core-network"
}

variable "description" {
  description = "Description for the CloudWAN Core Network"
  type        = string
  default     = ""
}


variable "edge_locations" {
  description = "List of AWS regions as Edge Locations"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}
variable "segments" {
  description = "Map of segment names to their asn_ranges and edge_locations"
  type = map(object({
    asn_ranges     = list(string)
    edge_locations = list(string)
  }))
}

# variable "segments" {
#   description = "List of segments for CloudWAN"
#   type        = list(string)
# }