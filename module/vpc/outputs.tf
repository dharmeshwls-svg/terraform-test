output "my_vpc_id" {
  description = "VPC ID"
  value = aws_vpc.my_vpc.id
}
output "public_subnets"{
    description = "public subnet id"
    value = [ for s in aws_subnet.public_subnet: s.id]
}
output "private_subnets" {
    description = "Private subnet id"
    value = [ for s in aws_subnet.private_subnet: s.id]
}