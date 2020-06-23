variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default = "10.1.0.0/16"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "Dev"
  }
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default = "10.1.0.0/24"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default = "ap-south-1a"
}


variable "instance_name" {
  description = "Name of the instance"
  default = "Terraform_Instance"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-005956c5f0f757d37"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}
variable "key_name" {
  description = "key name"
  default = "key4"
}
