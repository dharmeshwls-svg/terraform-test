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
