output "core_network_id" {
  description = "The ID of the created Core Network"
  value       = aws_networkmanager_core_network.my_network.id
}

output "core_network_arn" {
  description = "The ARN of the created Core Network"
  value       = aws_networkmanager_core_network.my_network.arn
}