output "instance_id" {
  description = "This is id of the ec2 instance"
  value       = aws_instance.ec2[*].id
}

output "public_ip" {
  description = "The public IP address assigned to the instance"
  value       = aws_instance.ec2[*].public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance"
  value       = aws_instance.ec2[*].private_ip
}