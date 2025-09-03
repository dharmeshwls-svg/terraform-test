output "rout53_record_fqdn" {
  value = aws_route53_record.lb_alias.fqdn
  
}