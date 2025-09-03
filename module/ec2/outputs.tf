output "instances" {
    description = "The IDs of the EC2 instances"
    value = aws_instance.web.*.id
}