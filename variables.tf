variable "cidr" {
  description = "CIDR range for the vpc"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc" {
  description = "VPC"
  type = string
  default = "vpc-0519d37f4a17e8d0f"
}

variable "internet_gateway" {
  description = "IGW for the VPC"
  type = string
  default = "	igw-09806e37b2b7d3bff"
}

variable "route_table" {
  description = "Route table for the VPC"
  type = string
  default = "rtb-08f28279b3e117d52"
}

variable "subnet" {
  description = "Subnet for the VPC"
  type = string
  default = "	subnet-0fd46cc7e01b82c44"
}

variable "SGW" {
  description = "Security group for the VPC and EC2"
  type = string
  default = "sg-003028fc1098b89e2"
}


#EC2 Variables

variable "ami" {
  description = "AMI ID for the EC2"
  type = string
  default = "ami-04b4f1a9cf54c11d0"
}

variable "instance_type" {
  description = "Instance type for the EC2"
  type = string
  default = "t2.micro"
}

variable "key_pair" {
  description = "Key for the EC2"
  type = string
  default = "aws-key"
}
