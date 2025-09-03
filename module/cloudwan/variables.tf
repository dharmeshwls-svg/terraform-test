variable "core_network_name" {
  description = "Name for the AWS CloudWAN Core Network"
  type        = string
}

variable "description" {
  description = "Description for the CloudWAN Core Network"
  type        = string
  default     = ""
}

variable "segments" {
  description = "Map of segment names to their asn_ranges and edge_locations"
  type = map(object({
    asn_ranges     = list(string)
    edge_locations = list(string)
  }))
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
