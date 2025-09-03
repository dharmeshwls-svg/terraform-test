output "aws_alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.alb.arn
  
}
output "aws_alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.alb.dns_name
}
output "aws_alb_zone_id" {
  description = "The Zone ID of the ALB"
  value       = aws_lb.alb.zone_id
}