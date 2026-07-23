output "private_ip" {
    value = aws_instance.prod.private_ip
}

output "instance_id" {
    value = aws_instance.prod.id  
}