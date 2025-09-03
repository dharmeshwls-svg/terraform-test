resource "aws_fms_policy" "sg-policy" {
  name                  = var.policy_name
  resource_type         = var.resource_type
  remediation_enabled   = var.remediation_enabled
  exclude_resource_tags = var.exclude_resource_tags

  security_service_policy_data {
    type                 = "WAFV2"
    managed_service_data = "{\"type\":\"WAFV2\"}"
  }
}