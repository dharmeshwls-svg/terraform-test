output "zone_id" {
  value = coalesce(
    one(aws_route53_zone.primary[*].zone_id),
    one(data.aws_route53_zone.existing[*].zone_id)
  )
}