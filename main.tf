resource "aws_instance" "prod" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [var.vpc_security_group_ids]

  root_block_device {
    delete_on_termination = var.delete_on_termination
    encrypted             = var.encrypted
    volume_size           = var.volume_size
    volume_type           = var.volume_type
  }

  tags = {
    Name = var.Name
  }
}

locals {
    name = "${var.env}-ec2"
}