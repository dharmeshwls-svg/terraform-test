data "aws_route53_zone" "existing" {
  count = var.create_dns_zone ? 0 : 1
  name  = var.domain_name
}

resource "aws_route53_zone" "primary" {
  count = var.create_dns_zone ? 1 : 0
  name  = var.domain_name
}

locals {
  zone_id = var.create_dns_zone ? aws_route53_zone.primary[0].zone_id : data.aws_route53_zone.existing[0].zone_id
}
locals {
  dns_zone_id = var.create_dns_zone ? aws_route53_zone.primary[0].zone_id : data.aws_route53_zone.existing[0].zone_id
}