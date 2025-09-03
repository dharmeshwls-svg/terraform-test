output "fms_policy_id" {
  description = "The ID of the Firewall Manager policy"
  value       = aws_fms_policy.sg-policy.id
}