variable "sg_id" {
    description = "The ID of the security group"
    type        = string
}
variable "subnets" {
    description = "The ec2 subnet"
    type        = list(string )  
  
}
variable "ec2_name" {
    description = "The name of the ec2 instance"
    type        = list(string)
    default     = ["WebServerInstance1", "WebServerInstance2"]
  
}