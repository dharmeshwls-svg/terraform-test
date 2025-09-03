private_subnet_cidrs = ["10.0.4.0/24", "10.0.5.0/24"]
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
domain_name          = "dcloudlabs.net"
policy_name          = "Firewall security group policy for overly permissive security groups"
security_service_policy_data = {
  type                 = "AWS::FMS::Policy"
  managed_service_data = "{\"type\":\"AWS::FMS::Policy\"}"
}
segments = {
  prod = {
    asn_ranges     = ["64512-64520"]
    edge_locations = ["us-east-1"]
  }
  dev = {
    asn_ranges     = ["64521-64530"]
    edge_locations = ["us-west-2"]
  }
}