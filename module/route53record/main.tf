resource "aws_route53_record" "lb_alias" {
    zone_id = var.hosted_zone_id
    name    = var.record_name
    type    = "A"
    
    alias {
        name                   = var.load_balancer_dns_name
        zone_id                = var.load_balance_zone_id
        evaluate_target_health = true
    }
  
}