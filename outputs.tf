output "instance_id" {
  description = "ID of the web EC2 instance"
  value       = aws_instance.web.id
}
