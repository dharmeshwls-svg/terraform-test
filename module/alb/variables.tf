variable "sg_id" {
  description = "SG ID for ALB"
  type        = string
  
}
variable "subnets" {
  description = "Subnet IDs for ALB"
  type        = list(string)
  
}
variable "vpc_id" {
  description = "VPC ID for ALB"
  type        = string
  
}
variable "instances" {
  description = "List of instance IDs to attach to the target group"
  type        = list(string)
  
}