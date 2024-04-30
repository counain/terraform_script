variable "instance_type" {
  description = "The type of EC2 instance"
  type        = string
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "key_name" {
  description = "The subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group for the EC2 instance"
  type        = string
}

