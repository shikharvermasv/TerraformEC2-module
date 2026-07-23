variable "ami" {

}

variable "associate_public_ip_address" {
  type    = bool
  default = false
}

variable "subnet_id" {

}

variable "vpc_security_group_ids" {

}

variable "delete_on_termination" {
  type    = bool
  default = true
}

variable "encrypted" {
  default = true
}

variable "instance_type" {

}

variable "volume_size" {

}

variable "volume_type" {
  type    = string
  default = "gp3"
}

variable "Name" {
  default = "prod"
}

variable "env" {
    default = "demo"
}