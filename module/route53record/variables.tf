variable "hosted_zone_id" {
  description = "The hosted zone ID"
  type = string
}
variable "record_name" {
  description = "the name of route 53 record"
  type = string
}
variable "load_balancer_dns_name" {
    description = "The Load balance DNS name"
    type = string
  
}
variable "load_balance_zone_id" {
  description = "The zone ID of the load balancer"
  type        = string
  
}